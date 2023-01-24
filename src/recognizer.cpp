#include "recognizer.h" // Include the header file for the Recognizer class
#include "global.h"     // Include string literals

#include <QCoreApplication> // Include the QCoreApplication class
#include <QDebug>           // Include the QDebug class for logging messages
#include <QJsonDocument>    // Include the QJsonDocument class for working with JSON data
#include <QLocale>          // Include the QLocale class for working with locale settings
#include <QMessageBox>      // Include the QMessageBox class for creating message boxes

#include "vosk_api.h" // Include the Vosk API header file

#include <thread> // Include thread so we don't need QtConcurrent

using namespace literals;

// Declare global variables for the Vosk model and recognizer
VoskModel *model = nullptr;
VoskRecognizer *globalRecognizer = nullptr;

// Declare a string for the "wake word" (defaults to `alexa` + empty character so it doesn't trigger on alexander)
QLatin1String _wakeWord = L1("alexa ");

// Declare a global variable to store the directory where the Vosk models are stored
QString _modelDir;

// Declare a global variable to indicate whether the recognizer should always listen for audio input
bool _alwaysListen = false;

Listener::Listener(QObject *parent)
    : QIODevice(parent)
{
    open(QIODevice::ReadWrite);

#ifdef QT_DEBUG
    _alwaysListen = true;
#endif
};

qint64 Listener::writeData(const char *data, qint64 size)
{
    if (vosk_recognizer_accept_waveform(globalRecognizer, data, (int) size))
        parseText(vosk_recognizer_final_result(globalRecognizer));
    else
        parsePartial(vosk_recognizer_partial_result(globalRecognizer));

    return size;
}

void Listener::parseText(const char *json)
{
    auto obj = QJsonDocument::fromJson(json);
    QString text = obj[L1("text")].toString();

    if (text.isEmpty())
        return;

    if (!_alwaysListen)
        return;

    if (text.contains(_wakeWord))
        text = text.mid(text.indexOf(_wakeWord) + _wakeWord.size());

    Q_EMIT textUpdated(text);

    qDebug() << "[debug] Text:" << text;

    Q_EMIT doneListening();
}

void Listener::parsePartial(const char *json)
{
    auto obj = QJsonDocument::fromJson(json);
    QString text = obj[L1("partial")].toString();
    if (text.isEmpty())
        return;
    text.append(u' ');

    if (text.contains(_wakeWord)) {
        Q_EMIT wakeWord();
        text = text.mid(text.indexOf(_wakeWord) + _wakeWord.size());
    } else if (!_alwaysListen)
        return;

    Q_EMIT textUpdated(text);
}

Recognizer::Recognizer(QObject *parent)
    : QObject{parent}
    , m_device(new Listener(this))
{
    // Disable kaldi debug messages
    vosk_set_log_level(-1);
}

Recognizer::operator bool() const
{
    return audio && m_device && globalRecognizer;
}

void Recognizer::pause()
{
    if (!audio)
        return;

    audio->stop();
    if (globalRecognizer)
        vosk_recognizer_reset(globalRecognizer);

    setState(Paused);
}

void Recognizer::resume()
{
    if (!audio)
        return;

    switch (audio->state()) {
    case QAudio::ActiveState:
        return;
    case QAudio::SuspendedState:
        audio->resume();
        break;
    case QAudio::StoppedState:
        audio->start(m_device.get());
        break;
    default:
        break;
    }

    setState(Running);
}

void Recognizer::setUpModel()
{
    qDebug() << "[debug] Setting up model and recognizer";

    const QStringList uiLangs = QLocale::system().uiLanguages();

    QDir dir(modelDir());
    if (dir.isEmpty(QDir::Dirs)) {
        setState(ModelsMissing);
        return;
    }

    for (const auto &lang : uiLangs) {
        if (!dir::exists(modelDir() + lang))
            continue;

        model = vosk_model_new(QString(modelDir() + lang).toUtf8());
        if (model) {
            qDebug() << "[debug] Loaded model, language:" << lang;
            globalRecognizer = vosk_recognizer_new(model, 16000.0);
        }

        if (!model || !globalRecognizer) {
            setState(ErrorWhileLoading);
            return;
        }

        m_language = lang;
        Q_EMIT languageChanged();

        qDebug() << "[debug] Recognizer loaded successful";

        Q_EMIT modelLoaded();
        return;
    }

    setState(NoModelFound);
    qDebug() << "[debug] No model found!";
}

void Recognizer::setUpMic()
{
    if (!globalRecognizer)
        return;
    if (m_state != NotStarted)
        return;

    qDebug() << "[debug] Prepare microphone";

    QAudioFormat format;
    format.setSampleRate(16000);
    format.setChannelCount(1);
#if QT_VERSION >= QT_VERSION_CHECK(6, 0, 0)
    format.setSampleFormat(QAudioFormat::Int16);

    auto inputDevices = QMediaDevices::audioInputs();
    auto input = QMediaDevices::defaultAudioInput();
#else
    format.setSampleType(QAudioFormat::SignedInt);
    format.setSampleSize(16);

    auto inputDevices = QAudioDeviceInfo::availableDevices(QAudio::AudioInput);
    auto input = QAudioDeviceInfo::defaultInputDevice();
#endif
    if (inputDevices.isEmpty()) {
        setState(NoMicrophone);
        return;
    } else if (!input.isFormatSupported(format)) {
        setState(IncompatibleFormat);
        return;
    }

    audio.reset(new AUDIOINPUT(format, this));
    connect(audio.get(), &AUDIOINPUT::stateChanged, this, [](QAudio::State state) {
        qDebug() << "[debug] Microphone state:" << state;
    });
    audio->setBufferSize(8000);
    audio->start(m_device.get());
    setState(Running);

    qDebug() << "[debug] Microphone set up";
}

void Recognizer::setup()
{
    if (m_state != NotStarted)
        return;

    connect(this, &Recognizer::modelLoaded, this, &Recognizer::setUpMic, Qt::UniqueConnection);

    std::thread(&Recognizer::setUpModel, this).detach();
}

bool Recognizer::hasWord(const QString &word)
{
    if (!model)
        return false;

    if (word.isEmpty())
        return true;

    return vosk_model_find_word(model, word.toLower().toUtf8()) != -1;
}

void Recognizer::setWakeWord(const QString &word)
{
    _wakeWord = QLatin1String(word.toLatin1() + ' ');
}
QString Recognizer::wakeWord()
{
    return _wakeWord.left(_wakeWord.size() - 1);
}

QString Recognizer::dataDir()
{
#ifdef QT_DEBUG
    return STR(APP_DIR);
#else
    return QCoreApplication::applicationDirPath();
#endif
}

void Recognizer::setModelDir(const QString &dir)
{
    _modelDir = dir;
    if (!_modelDir.endsWith(u'/'))
        _modelDir.append(u'/');
}
QString Recognizer::modelDir()
{
    if (_modelDir.isEmpty()) {
        _modelDir = dataDir();
        _modelDir.append(L1("/models/"));
    }

    return _modelDir;
}

void Recognizer::setAlwaysListen(bool aL)
{
    _alwaysListen = aL;
}
bool Recognizer::alwaysListen()
{
    return _alwaysListen;
}

void Recognizer::setState(Recognizer::State s)
{
    m_state = s;

    switch (m_state) {
    case Running:
    case NoError:
        m_errorString.clear();
        break;
    case NoModelFound:
        m_errorString = tr("No Vosk model was found for the system languages");
        break;
    case ModelsMissing:
        m_errorString = tr("The directory where the Vosk models are stored is empty");
        break;
    case ErrorWhileLoading:
        m_errorString = tr(
            "An unknown error occurred while loading the Vosk model and/or recognizer");
        break;
    case NotStarted:
        m_errorString = tr("The recognizer has not yet been set up");
        break;
    case NoMicrophone:
        m_errorString = tr("No microphone was found or the microphone is not accessible");
        break;
    case IncompatibleFormat:
        m_errorString = tr(
            "The microphone is incompatible with the required audio format (PCM 16bit mono)");
        break;
    case Paused:
        m_errorString = tr("Stopped processing audio data (Paused).");
        break;
    default:
        break;
    }

    qDebug() << "[debug] Recognizer state changed:" << s << ":" << m_errorString;

    Q_EMIT stateChanged();
}

Recognizer::~Recognizer()
{
    // FIXME: The code crashes when calling `vosk_recognizer_free`. No matter if I create the `VoskRecognizer` in a separate thread or not.
    // TODO: Create a issue here: https://github.com/alphacep/vosk-api/issues/new/choose
    // vosk_recognizer_free(globalRecognizer);
    vosk_model_free(model);
}
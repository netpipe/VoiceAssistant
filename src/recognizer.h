#ifndef RECOGNIZER_H
#define RECOGNIZER_H

#include <QIODevice>

#if QT_VERSION >= QT_VERSION_CHECK(6, 0, 0)
#include <QAudioSource>
#include <QMediaDevices>
#define AUDIOINPUT QAudioSource
#else
#include <QAudioDeviceInfo>
#include <QAudioInput>
#define AUDIOINPUT QAudioInput
#endif

// Define the Listener class, which inherits from QIODevice
class Listener : public QIODevice
{
    Q_OBJECT

public:
    // Constructor for the Listener class, which takes a parent object
    // and calls the QIODevice constructor to open the device in read-write mode
    explicit Listener(QObject *parent);

    // Reimplementation of the writeData method from QIODevice, which takes
    // the incoming audio data and size as arguments and passes them to
    // the Vosk recognizer to convert the audio to text
    qint64 writeData(const char *data, qint64 size) override;

    inline qint64 readData(char *data, qint64 size) override { return size; };

Q_SIGNALS:
    // Signal emitted when the wake word is detected in the audio input
    void wakeWord();

    // Signal emitted when the recognizer has finished listening for audio input
    void doneListening();

    // Signal emitted when the recognizer has recognized some text in the audio input
    void textUpdated(const QString &text);

private:
    // Private method that takes a JSON string containing the recognized text
    // and parses it to extract the text and emit the appropriate signals
    void parseText(const char *json);

    // Private method that takes a JSON string containing partial recognized text
    // and parses it to extract the text and emit the appropriate signals
    void parsePartial(const char *json);
};

class Recognizer : public QObject
{
    Q_OBJECT

public:
    explicit Recognizer(QObject *parent = nullptr);
    ~Recognizer();

    enum State {
        NoError = 0,            // No error
        NoModelFound = 1,       // No Vosk model was found for the system languages
        ModelsMissing = 2,      // The directory where the Vosk models are stored is empty
        ErrorWhileLoading = 3,  // Unknown error loading Vosk model or recognizer
        NotStarted = 4,         // Recognizer not set up or not listening
        NoMicrophone = 5,       // No microphone was found or the microphone is not accessible
        IncompatibleFormat = 6, // Incompatible microphone, must support PCM 16bit mono
        Running = 7,            // The recognizer is set up and proceeds data
        Paused = 8              // The microphone input is paused
    };
    Q_ENUM(State);

    [[nodiscard]] inline State state() const { return m_state; }
    inline QString errorString() { return m_errorString; }

    [[nodiscard]] inline Listener *device() const { return m_device.get(); }

    static bool hasWord(const QString &word);

    static void setWakeWord(const QString &word);
    static QString wakeWord();

    static QString dataDir();

    static void setModelDir(const QString &);
    static QString modelDir();

    static void setAlwaysListen(bool aL);
    static bool alwaysListen();

    inline QString language() { return m_language; };

    void setup();

    explicit operator bool() const;

public Q_SLOTS:
    void pause();
    void resume();

Q_SIGNALS:
    void stateChanged();
    void modelLoaded();
    void languageChanged();

private:
    void setState(Recognizer::State s);

    void setUpModel();
    void setUpMic();

    QScopedPointer<AUDIOINPUT> audio;
    QScopedPointer<Listener> m_device;

    State m_state = NotStarted;
    QString m_errorString;

    QString m_language;
};

#endif // RECOGNIZER_H

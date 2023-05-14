#ifndef PLUGINBRIDGE_H
#define PLUGINBRIDGE_H

#include <QCoreApplication>
#include <QMutex>
#include <QObject>

#if QT_WIDGETS_LIB
#include <QWidget>
#else
class QWidget;
#endif

/**
 * @brief The PluginBridge class provides a bridge for communication between plugins and the host application.
 *
 * PluginBridge serves as a communication bridge between plugins and the host application.
 * It allows plugins to interact with the host application's functionality and services like text to speech and voice recognition.
 */
class PluginBridge final : public QObject
{
    Q_OBJECT

    friend class MainWindow;

public:
    /**
     * @brief PluginBridge constructor.
     * @param parent The parent object.
     */
    inline explicit PluginBridge(QObject *parent = nullptr)
        : QObject(parent){};

    /**
     * @brief PluginBridge destructor.
     *
     * The destructor releases the mutex lock if acquired.
     */
    inline ~PluginBridge() final
    {
        if (mutex.tryLock())
            mutex.unlock();
    }

    /**
     * @brief ask sends a request to the host application with a question and waits for an answer.
     * @param text The question text.
     * @return The answer received from the host application.
     *
     * This function sends a question to the host application and waits for a response.
     * It blocks the plugin execution until an answer is received.
     */
    inline QString ask(const QString &text)
    {
        mutex.lock();
        pause = true;

        Q_EMIT _ask(text, QPrivateSignal());

        while (pause)
            QCoreApplication::processEvents();

        mutex.unlock();
        return answer;
    };

    /**
     * @brief sayAndWait sends a speech request to the host application and waits until it completes.
     * @param text The text to be spoken.
     *
     * This function sends a speech request to the host application and waits until the speech is completed.
     * It blocks the plugin execution until the speech is finished.
     */
    inline void sayAndWait(const QString &text)
    {
        if (text.isEmpty())
            return;

        mutex.lock();
        pause = true;

        Q_EMIT _sayAndWait(text, QPrivateSignal());

        while (pause)
            QCoreApplication::processEvents();

        mutex.unlock();
    }

public Q_SLOTS:
    /**
     * @brief say sends a speech request to the host application.
     * @param text The text to be spoken.
     *
     * This function sends a speech request to the host application.
     * It does not block the plugin execution.
     */
    inline void say(const QString &text) { Q_EMIT _say(text, QPrivateSignal()); };

Q_SIGNALS:
    /**
     * @brief _say signal emitted to send a speech request to the host application.
     * @param text The text to be spoken.
     *
     * This signal is emitted to send a speech request to the host application.
     */
    void _say(const QString &text, QPrivateSignal);

    /**
     * @brief _sayAndWait signal emitted to send a speech request to the host application and wait until it completes.
     * @param text The text to be spoken.
     *
     * This signal is emitted to send a speech request to the host application and wait until it completes.
     */
    void _sayAndWait(const QString &text, QPrivateSignal);

    /**
     * @brief _ask signal emitted to send a question to the host application and wait for an answer.
     * @param text The question text.
     *
     * This signal is emitted to send a question to the host application and wait for an answer.
     */

    void _ask(const QString &text, QPrivateSignal);

    /**
     * @brief useWidget signal emitted to send a widget to the host application for usage.
     * @param widget The widget to be used.
     *
     * This signal is emitted to send a widget to the host application for usage.
     * The host application can use the provided widget as needed.
     */
    void useWidget(QWidget *widget);

private:
    QString answer;
    bool pause = false;

    QMutex mutex;
};

#endif

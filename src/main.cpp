#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QSGRendererInterface>
#include <QSurfaceFormat>
#include <QQuickStyle>

int main(int argc, char *argv[]){
    // qputenv("QSG_INFO", "1");
    QSurfaceFormat fmt;
    // fmt.setRenderableType(QSurfaceFormat::OpenGL);   // or Default
    fmt.setSamples(2);
    QSurfaceFormat::setDefaultFormat(fmt);
    QQuickWindow::setGraphicsApi(QSGRendererInterface::Vulkan);
    QGuiApplication app(argc, argv);
    QQuickStyle::setStyle("Fusion");
    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:/ui/main.qml"));
    if (engine.rootObjects().isEmpty())
        return -1;
    // qDebug() << "Backend:" << QQuickWindow::graphicsApi();
    return app.exec();
}
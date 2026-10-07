import QtQuick
import QtQuick.Controls
import CarShop 1.0

Window {
    id: root
    visible: true
    width: 800; height: 600
    minimumWidth: 660; minimumHeight: 400
    title: qsTr("AutoLux")
    readonly property color primary: "#4F6BFF"
    readonly property color primaryHover: "#6480FF"
    readonly property color primaryPress: "#3A57F0"
    readonly property color secondry: "#FFFFFF"
    readonly property color secondryHover: "#fafafa"
    readonly property color secondryPress: "#f0f0f0"
    readonly property color mainBackground: "#F5F7FB"
    readonly property color cardBackground: "#FFFFFF"
    readonly property color sidebarBackground: "#0B1220"
    readonly property color primaryText: "#111827"
    readonly property color secondaryText: "#6B7280"
    readonly property color mutedText: "#9CA3AF"
    readonly property color whiteText: "#FFFFFF"
    readonly property color success: "#22C55E"
    readonly property color warning: "#F59E0B"
    readonly property color danger: "#EF4444"
    readonly property color info: "#3B82F6"
    readonly property color borderC: "#E5E7EB"
    readonly property color lightBlue: "#d0ddfc"

    color: mainBackground
    function clamp(min, max, prefer){
        return Math.min(max, Math.max(min, prefer))
    }
    FontLoader {id: font1; source: "qrc:/assets/font/Inter.ttf"}
    FontLoader {id: font1Medium; source: "qrc:/assets/font/InterMedium.ttf"}
    FontLoader {id: font1Bold; source: "qrc:/assets/font/InterBold.ttf"}
    FontLoader {id: font1Black; source: "qrc:/assets/font/InterBlack.ttf"}
    FontLoader {id: font1SemiBold; source: "qrc:/assets/font/InterSemiBold.ttf"}
    SideBar{
        id: sideBar
    }
    MainContent{
        id: mainContent
    }
}
import QtQuick
import QtQuick.Controls

Button {
    id: btn

    hoverEnabled: true

    property color bg: "#0d6efd"
    property color hg: "#0a58ce"
    property color pg: "#074097"

    property color bdColor: "transparent"
    property int bdWidth: 0

    property real pressScale: 0.95
    property int animeTime: 150

    property int radius: 5

    property int topLeftRadius: -1
    property int topRightRadius: -1
    property int bottomLeftRadius: -1
    property int bottomRightRadius: -1

    property string iconSource: ""
    property int iconSize: 20

    contentItem: Image {
        source: btn.iconSource

        sourceSize.width: btn.iconSize
        sourceSize.height: btn.iconSize

        fillMode: Image.PreserveAspectFit
        smooth: true

        anchors.centerIn: parent
    }

    background: Rectangle {
        color: btn.down ? btn.pg : (btn.hovered ? btn.hg : btn.bg)

        radius: btn.radius

        border.color: btn.bdColor
        border.width: btn.bdWidth

        scale: btn.pressed ? btn.pressScale : 1.0

        Behavior on scale {NumberAnimation{duration: btn.animeTime}}
        Behavior on color {ColorAnimation{duration: btn.animeTime}}
        // Behavior on border.color {ColorAnimation{duration: btn.animeTime}}

        topLeftRadius: btn.topLeftRadius >= 0 ? btn.topLeftRadius : btn.radius
        topRightRadius: btn.topRightRadius >= 0 ? btn.topRightRadius : btn.radius
        bottomLeftRadius: btn.bottomLeftRadius >= 0 ? btn.bottomLeftRadius : btn.radius
        bottomRightRadius: btn.bottomRightRadius >= 0 ? btn.bottomRightRadius : btn.radius
    }
}
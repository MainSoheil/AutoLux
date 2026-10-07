import QtQuick
import QtQuick.Controls

TextField {
    id: input
    color: "#111"
    placeholderTextColor: "#888"
    property color bg: "#FFF"
    property color hg: "#fcfcfc"
    property color pg: "#FFF"
    property color bdColor: "transparent"
    property int bdWidth: 0
    property int radius: 4
    property int animeTime: 100
    hoverEnabled: true

    background: Rectangle {
        color: input.activeFocus  ? input.pg : (input.hovered ? input.hg : input.bg)
        radius: input.radius
        border.width: input.bdWidth
        border.color: input.bdColor
        Behavior on color { ColorAnimation { duration: input.animeTime } }
    }
}
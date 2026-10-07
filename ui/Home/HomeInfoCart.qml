import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import CarShop 1.0

Rectangle {
    width: 180; height: 100;
    color: "#FFF"
    radius: 10
    border{ width:1; color:borderC }

    property string text1: ""
    property string text2: ""
    property string text3: ""
    property url iconSource: ""

    RowLayout{
        anchors.fill: parent 
        anchors.margins: 10
        spacing: 5

        Rectangle {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 35
            Layout.preferredHeight: 35
            radius: 15
            color: lightBlue

            ColorOverlay {
                anchors.centerIn: parent
                width: icon.width; height: icon.height
                source: icon
                color: primaryPress
            }
            Image {
                id: icon
                source: iconSource
                sourceSize.width: 18; sourceSize.height: 18
                visible: false
            }
        }
        Column{
            Layout.alignment: Qt.AlignHCenter
            spacing: 5
            Text{
                text: text1
                color: secondaryText
                font.family: font1Medium.name
                font.pixelSize: 10
            }
            Text{
                text: text2
                color: primaryText
                font.family: font1Medium.name
                font.pixelSize: 12
                font.bold: true
            }
            Text{
                text: text3
                color: success
                font.family: font1Medium.name
                font.pixelSize: 10
            }
        }
    }
}
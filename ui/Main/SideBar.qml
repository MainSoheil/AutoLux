import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import CarShop 1.0

Rectangle{
    id: sideBar
    anchors{
        top: parent.top; bottom: parent.bottom
        left: parent.left;
    }
    width: clamp(70, 150, parent.width / 5)
    color: sidebarBackground
    // bottomRightRadius: 10
    // topRightRadius: 10
    readonly property int sideBarBtnWidth: sideBar.width * 0.9
    readonly property int sideBarBtnHeight: clamp(35, 50, sideBar.height * 0.1)
    readonly property int sideBarBtnFontSize: root.clamp(8, 12, sideBarBtnWidth / 10)
    readonly property int sideBarIconSize: sideBarBtnWidth * 0.14
    property int activeButton: 0

    ColumnLayout{
        anchors.fill: parent
        RowLayout{
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter
            spacing: 5
            Image{
                readonly property int sideBarbrandImageSize: brandNameText.implicitWidth * 0.25
                Layout.alignment: Qt.AlignVCenter
                Layout.preferredWidth: sideBarbrandImageSize
                fillMode: Image.PreserveAspectFit
                source: 'qrc:/assets/image/benzLogo.svg'
                sourceSize.width: sideBarbrandImageSize
                sourceSize.height: sideBarbrandImageSize
            }
            Text{
                Layout.alignment: Qt.AlignVCenter
                id: brandNameText
                text: "Auto Lux"
                color: "#e94560"
                font.pixelSize: clamp(10, 24, sideBar.width / 7)
                font.bold: true
                font.family: font1Bold.name
                horizontalAlignment: Text.AlignHCenter
                topPadding: 12
                bottomPadding: 12
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WordWrap
                elide: Text.ElideNone
            }
        }
        BtnImage {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: sideBarBtnWidth
            Layout.preferredHeight: sideBarBtnHeight
            horizontalAlignment: Text.AlignLeft
            leftPadding: 10
            iconSource: 'qrc:/assets/image/home.svg'
            iconSize: sideBarIconSize
            text: "Home"
            font.pixelSize: sideBarBtnFontSize
            font.family: font1.name
            radius: 10
            bg: activeButton == 0 ? primaryPress : "transparent"
            hg: activeButton == 0 ? primaryPress : primaryHover
            pg: primaryPress
            pressScale: 1.0
            onClicked: {
                mainContent.currentPage = "home"
                activeButton = 0
            }
        }
        BtnImage {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: sideBarBtnWidth
            Layout.preferredHeight: sideBarBtnHeight
            horizontalAlignment: Text.AlignLeft
            leftPadding: 10
            iconSource: 'qrc:/assets/image/products.svg'
            iconSize: sideBarIconSize
            text: "Products"
            font.pixelSize: sideBarBtnFontSize
            font.family: font1.name
            radius: 10
            bg: activeButton == 1 ? primaryPress : "transparent"
            hg: activeButton == 21 ? primaryPress : primaryHover
            pg: primaryPress
            pressScale: 1.0
            onClicked: {
                mainContent.currentPage = "products"
                activeButton = 1
            }
        }
        BtnImage {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: sideBarBtnWidth
            Layout.preferredHeight: sideBarBtnHeight
            horizontalAlignment: Text.AlignLeft
            leftPadding: 10
            iconSource: 'qrc:/assets/image/createProducts.svg'
            iconSize: sideBarIconSize
            text: "Add Product"
            font.pixelSize: sideBarBtnFontSize
            font.family: font1.name
            radius: 10
            bg: activeButton == 2 ? primaryPress : "transparent"
            hg: activeButton == 2 ? primaryPress : primaryHover
            pg: primaryPress
            pressScale: 1.0
            onClicked: {
                mainContent.currentPage = "addProduct"
                activeButton = 2
            }
        }
        BtnImage {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: sideBarBtnWidth
            Layout.preferredHeight: sideBarBtnHeight
            horizontalAlignment: Text.AlignLeft
            leftPadding: 10
            iconSource: 'qrc:/assets/image/brands.svg'
            iconSize: sideBarIconSize
            text: "Brands"
            font.pixelSize: sideBarBtnFontSize
            font.family: font1.name
            radius: 10
            bg: activeButton == 3 ? primaryPress : "transparent"
            hg: activeButton == 3 ? primaryPress : primaryHover
            pg: primaryPress
            pressScale: 1.0
            onClicked: {
                mainContent.currentPage = "brands"
                activeButton = 3
            }
        }
        BtnImage {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: sideBarBtnWidth
            Layout.preferredHeight: sideBarBtnHeight
            horizontalAlignment: Text.AlignLeft
            leftPadding: 10
            iconSource: 'qrc:/assets/image/settings.svg'
            iconSize: sideBarIconSize
            text: "Settings"
            font.pixelSize: sideBarBtnFontSize
            font.family: font1.name
            radius: 10
            bg: activeButton == 4 ? primaryPress : "transparent"
            hg: activeButton == 4 ? primaryPress : primaryHover
            pg: primaryPress
            pressScale: 1.0
            onClicked: {
                mainContent.currentPage = "settings"
                activeButton = 4
            }
        }
        
        Item{Layout.fillHeight: true}
    }
}
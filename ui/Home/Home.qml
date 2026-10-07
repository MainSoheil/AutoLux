import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import CarShop 1.0

ScrollView {
    anchors.fill: parent
    // padding: 10
    anchors.margins: 10
    // anchors.topMargin: 10
    // anchors.bottomMargin: 10
    // anchors.rightMargin: 5
    // anchors.leftMargin: 5
    clip: true
    contentWidth: availableWidth
    readonly property int homeWidth: Math.min(width, 1000)

    ColumnLayout{
        id: homePage
        anchors.horizontalCenter: parent.horizontalCenter
        width: homeWidth
        spacing: 15

        RowLayout{
            id: homeRow1
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter
            spacing: 10
            Column{
                Layout.alignment: Qt.AlignVCenter
                Text {
                    text: "Wellcome Back Admin👋"
                    color: primaryText
                    font.pixelSize: 12
                    font.family: font1.name
                }
                Text{
                    text: "Here is whats happening with your dealership today."
                    color: secondaryText
                    font.pixelSize: 9
                    font.family: font1.name
                }
            }
            Item{Layout.fillWidth: true}
            Input {
                Layout.alignment: Qt.AlignVCenter
                Layout.preferredWidth: clamp(130, 180, homeRow1.width * 0.3)
                placeholderText: "Search ..."
                font.family: font1Medium.name
                font.pixelSize: 12
                leftPadding: 14
                rightPadding: 14
                topPadding: 5
                bottomPadding: 5
            }
            BtnIcon{
                Layout.alignment: Qt.AlignVCenter
                iconSource: 'qrc:/assets/image/notification.svg'
                iconSize: 15
                bg: secondry
                hg: secondryHover
                pg: secondryPress
                padding: 6
                bdColor: borderC
                bdWidth: 1
            }
        }

        Item {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: clamp(400, 800, homePage.width * 0.8)
            Layout.preferredHeight: 250

            Image {
                id: homeBannerImage
                anchors.fill: parent
                source: 'qrc:/assets/image/baner.png'
                fillMode: Image.Stretch
                visible: false
                smooth: true
                z: 0
            }
            Rectangle {
                id: homeBannerMask
                anchors.fill: parent
                visible: false
                color: "black"
                radius: 10
            }
            OpacityMask {
                anchors.fill: homeBannerImage
                source: homeBannerImage
                maskSource: homeBannerMask
                antialiasing: true
            }
            Image {
                source: 'qrc:/assets/image/overlay.png'
                anchors{
                    right: parent.right
                    bottom: parent.bottom
                    rightMargin: parent.width / 8
                    bottomMargin: 15
                }
                width: parent.width * 0.5
                fillMode: Image.PreserveAspectFit
                smooth: true
                z: 1
            }
            ColumnLayout{
                anchors{
                    left: parent.left
                    top: parent.top
                    leftMargin: parent.width / 25
                    topMargin: 10
                }
                spacing: 8

                Text{
                    text: "Manage, Show, Sell"
                    color: info
                    font.family: font1Medium.name
                    font.pixelSize: 12
                }
                Column{
                    spacing: 2
                    Text{
                        text: "Manage Your Cars,"
                        color: primaryText
                        font.family: font1Black.name
                        font.pixelSize: 15
                        font.bold: true
                    }
                    Text{
                        text: "impress your customers."
                        color: primaryText
                        font.family: font1Black.name
                        font.pixelSize: 15
                        font.bold: true
                    }
                }
                Column{
                    spacing: 2
                    Text{
                        text: "Add your cars, keep info updated and"
                        color: secondaryText
                        font.family: font1Medium.name
                        font.pixelSize: 10
                    }
                    Text{
                        text: "help your customers find their perfect match."
                        color: secondaryText
                        font.family: font1Medium.name
                        font.pixelSize: 10
                    }
                }
                BtnImage{
                    text: "Add New Car"
                    iconSource: "qrc:/assets/image/plus.svg"
                    leftPadding: 10; rightPadding: 10
                    topPadding: 5; bottomPadding: 5
                }
            }
        }
        Grid {
            Layout.alignment: Qt.AlignHCenter
            spacing: 10
            readonly property int homeCartInfoW: 140
            readonly property int homeCartInfoH: 70
            columns: Math.max(1, Math.floor((homeWidth + spacing) / (homeCartInfoW + spacing)))
            width: columns * (homeCartInfoW + spacing) - spacing   // exact grid width

            HomeInfoCart{
                width: parent.homeCartInfoW; height: parent.homeCartInfoH;
                color: cardBackground
                text1: "Total Cars"
                text2: "128"
                text3: "+ 12 this month"
                iconSource: "qrc:/assets/image/products.svg"
            }
            HomeInfoCart{
                width: parent.homeCartInfoW; height: parent.homeCartInfoH;
                color: cardBackground
                text1: "Total Customers"
                text2: "56"
                text3: "+ 8 this month"
                iconSource: "qrc:/assets/image/people.svg"
            }
            HomeInfoCart{
                width: parent.homeCartInfoW; height: parent.homeCartInfoH;
                color: cardBackground
                text1: "Active Deals"
                text2: "14"
                text3: "+ 3 this month"
                iconSource: "qrc:/assets/image/tag.svg"
            }
            HomeInfoCart{
                width: parent.homeCartInfoW; height: parent.homeCartInfoH;
                color: cardBackground
                text1: "Total Seals"
                text2: "$245,800"
                text3: "+ 18% this month"
                iconSource: "qrc:/assets/image/coin.svg"
            }
            
        }
        RowLayout {
            Layout.fillWidth: true
            Layout.preferredHeight: 200
            spacing: width * 0.01

            Item { Layout.fillWidth: true }
            // part 1
            Rectangle {
                Layout.preferredWidth: parent.width * 0.60
                Layout.fillHeight: true
                color: cardBackground
                radius: 10
                border{ width:1; color:borderC }

                ColumnLayout{
                    anchors.fill: parent

                    RowLayout{
                        Layout.fillWidth: true
                        Layout.margins: 10
                        Layout.bottomMargin: 0

                        Text{
                            text: "Recent Cars"
                            color: primaryText
                            font.family: font1Bold.name
                            font.bold: true
                            font.pixelSize: 12
                        }
                        Item{ Layout.fillWidth: true }
                        Text{
                            text: "View all"
                            color: primary
                            font.family: font1Medium.name
                            font.pixelSize: 10
                        }
                    }

                    ListView {
                        id: homeCarsList
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.margins: 10
                        Layout.bottomMargin: 5
                        orientation: ListView.Horizontal
                        clip: true
                        spacing: 10

                        readonly property real itemHeight: height * 0.9

                        model: ListModel {
                            ListElement { name: "Range Rover Sport"; image: 'qrc:/assets/image/car1.jpg'; info: '2022 - 28,000 km - Automatic'; price: 78500; is_available: true }
                            ListElement { name: "BMW 5 Series"; image: 'qrc:/assets/image/car2.jpg'; info: '2021 - 35,000 km - Automatic'; price: 52300; is_available: false }
                            ListElement { name: "Audi A5"; image: 'qrc:/assets/image/car3.jpg'; info: '2020 - 22,000 km - Automatic'; price: 41900; is_available: true }
                            ListElement { name: "Land Cruiser VXR"; image: 'qrc:/assets/image/car5.jpg'; info: '2024 - 10,000 km - Automatic'; price: 120200; is_available: false }
                        }
                        delegate: Rectangle {
                            width: 150
                            height: homeCarsList.itemHeight
                            color: cardBackground
                            radius: 6
                            border{ width:1; color:borderC }

                            ColumnLayout{
                                anchors.fill: parent

                                Item {
                                    Layout.fillWidth: true
                                    Layout.preferredHeight: parent.height * 0.55

                                    Image {
                                        id: homeCarImage
                                        anchors.fill: parent
                                        source: model.image
                                        fillMode: Image.Stretch
                                        visible: false
                                    }
                                    Rectangle {
                                        id: homeCarImageMask
                                        anchors.fill: parent
                                        visible: false
                                        topLeftRadius: 5
                                        topRightRadius: 5
                                    }
                                    OpacityMask {
                                        anchors.fill: homeCarImage
                                        source: homeCarImage
                                        maskSource: homeCarImageMask
                                        antialiasing: true
                                        layer.enabled: true
                                        layer.smooth: true
                                        layer.textureSize: Qt.size(width * 2, height * 2)
                                    }
                                }
                                ColumnLayout{
                                    Layout.fillWidth: true
                                    Layout.preferredHeight: parent.height * 0.45
                                    Layout.margins: 8
                                    Layout.topMargin: 0

                                    Text{
                                        text: model.name
                                        color: primaryText
                                        font.family: font1Bold.name
                                        font.bold: true
                                        font.pixelSize: 10
                                    }
                                    Text{
                                        text: model.info
                                        color: secondaryText
                                        font.family: font1Medium.name
                                        font.pixelSize: 9
                                    }
                                    RowLayout{
                                        Text{
                                            text: "$" + model.price.toLocaleString(Qt.locale("en-US"), 'f', 0)
                                            color: primary
                                            font.family: font1Bold.name
                                            font.bold: true
                                            font.pixelSize: 10
                                        }
                                        Item{ Layout.fillWidth: true}
                                        Label {
                                            text: model.is_available ? "Available" : "Unavailable"
                                            color: whiteText
                                            font.family: font1Black.name
                                            font.pixelSize: 9
                                            font.bold: true
                                            leftPadding: 5; rightPadding: 5
                                            topPadding: 2; bottomPadding: 2

                                            background: Rectangle {
                                                radius: 5
                                                color: model.is_available ? success : warning
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            // part 2
            Rectangle {
                Layout.preferredWidth: parent.width * 0.35
                Layout.fillHeight: true
                color: cardBackground
                radius: 10
                border{ width:1; color:borderC }

                ColumnLayout{
                    anchors.fill: parent
                    anchors.margins: 8

                    Text{
                        Layout.fillWidth: true
                        text: "Quick Actions"
                        font{ family: font1Bold.name; pixelSize: 10; bold: true }
                        color: primaryText
                    }

                    ListView{
                        Layout.fillWidth: true
                        Layout.fillHeight: true
                        Layout.margins: parent.width > 200 ? 5 : 0
                        orientation: ListView.Vertical
                        clip: true
                        spacing: 10

                        model: ListModel {
                            ListElement { title: "Add new Car"; description: "Add new car to inventory"; icon: 'qrc:/assets/image/plus.svg'; bg: "#4F6BFF" }
                            ListElement { title: "Add Customer"; description: "Register new customer"; icon: 'qrc:/assets/image/people.svg'; bg: "#F59E0B" }
                            ListElement { title: "New Deal"; description: "Cereate new deal"; icon: 'qrc:/assets/image/tag.svg'; bg: "#22C55E" }
                            ListElement { title: "View Reports"; description: "Check your sells reports"; icon: 'qrc:/assets/image/chart.svg'; bg: "#3A57F0" }
                        }

                        delegate: Rectangle {
                            anchors.horizontalCenter: parent.horizontalCenter
                            width: Math.max(150, parent.width)
                            height: 35
                            color: secondryPress
                            radius: 6
                            border{ width:1; color:borderC }

                            RowLayout{
                                anchors.fill: parent
                                anchors.rightMargin: 6
                                anchors.leftMargin: 6

                                Rectangle {
                                    color: model.bg
                                    Layout.preferredWidth: 20
                                    Layout.preferredHeight: 20
                                    Layout.alignment: Qt.AlignVCenter
                                    radius: 3

                                    Image {
                                        anchors.centerIn: parent
                                        source: model.icon
                                        width: 16
                                        height: 16
                                        sourceSize.width: width
                                        sourceSize.height: height
                                        fillMode: Image.PreserveAspectFit
                                    }
                                }
                                ColumnLayout{
                                    Layout.fillHeight: true
                                    spacing: 2

                                    Item{ Layout.fillHeight: true}
                                    Text{
                                        text: model.title
                                        font{ family: font1Black.name; pixelSize: 9 }
                                        color: primaryText
                                    }
                                    Text{
                                        text: model.description
                                        font{ family: font1Medium.name; pixelSize: 8 }
                                        color: secondaryText
                                    }
                                    Item{ Layout.fillHeight: true}
                                }
                                Item{ Layout.fillWidth: true }
                                Item {
                                    Layout.alignment: Qt.AlignVCenter
                                    Layout.preferredWidth: 18
                                    Layout.preferredHeight: 18

                                    Image {
                                        id: chevronImg
                                        anchors.fill: parent
                                        source: 'qrc:/assets/image/chevron.svg'
                                        sourceSize.width: 18
                                        sourceSize.height: 18
                                        fillMode: Image.PreserveAspectFit
                                        visible: false          // hide the original
                                    }

                                    ColorOverlay {
                                        anchors.fill: chevronImg
                                        source: chevronImg
                                        color: mutedText
                                        antialiasing: true
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Item { Layout.fillWidth: true }
        }

        // Item{Layout.fillHeight: true}
    }
}
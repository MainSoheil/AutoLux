import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import CarShop 1.0

Rectangle{
    id: mainContent
    anchors{
        top: parent.top; bottom: parent.bottom
        left: sideBar.right; right: parent.right
    }
    color: "transparent"

    property string currentPage: "home"   // default page

    Loader {
        id: pageLoader
        anchors.fill: parent
        sourceComponent: {
            switch (mainContent.currentPage) {
                case "home":   return homeComp
                case "products":  return productsComp
                case "addProduct":  return addProductComp
                case "brands":  return brandsComp
                case "settings":  return settingsComp
                default:       return null
            }
        }
    }
    
    Component { id: homeComp;  Home {} }
    Component { id: productsComp; Products {} }
    Component { id: addProductComp; AddProduct {} }
    Component { id: brandsComp; Brands {} }
    Component { id: settingsComp; Settings {} }
}
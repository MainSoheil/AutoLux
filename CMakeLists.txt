cmake_minimum_required(VERSION 3.16)
project(CarShop LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# QT Path on you system
set(CMAKE_PREFIX_PATH "C:/Qt2/6.11.1/mingw_64")

find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2 Core Core5Compat)
qt_standard_project_setup()
qt_add_executable(CarShop src/main.cpp icon.rc)
qt_add_qml_module(CarShop URI "CarShop" VERSION 1.0
QML_FILES
    ui/main.qml
    ui/Main/MainContent.qml
    ui/Main/SideBar.qml
    ui/Home/Home.qml
    ui/Home/HomeInfoCart.qml
    ui/Brands/Brands.qml
    ui/Products/Products.qml
    ui/Products/AddProduct.qml
    ui/Setting/Settings.qml
    ui/Elements/Btn.qml
    ui/Elements/BtnImage.qml
    ui/Elements/BtnIcon.qml
    ui/Elements/Input.qml
)

target_link_libraries(CarShop PRIVATE Qt6::Quick Qt6::QuickControls2 Qt6::Core Qt6::Core5Compat shell32)
qt_add_resources(CarShopResources resources.qrc)
target_sources(CarShop PRIVATE ${CarShopResources})
target_include_directories(CarShop PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/src)

target_compile_options(CarShop PRIVATE
    $<$<CONFIG:Release>:
        -O3
        -DNDBUG
        -fno-exceptions
        -fno-rtti
    >
)

target_link_options(CarShop PRIVATE
    $<$<CONFIG:Release>:
        -s
        -mwindows
        -Wl,--gc-sections
    >
)
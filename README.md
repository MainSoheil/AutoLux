# Auto Lux — Car Dealership Dashboard

<div align="center">

<br>

![C++](https://img.shields.io/badge/C%2B%2B-00599C?style=for-the-badge&logo=cplusplus&logoColor=white)
![Qt](https://img.shields.io/badge/Qt-41CD52?style=for-the-badge&logo=qt&logoColor=white)
![QML](https://img.shields.io/badge/QML-5C2D91?style=for-the-badge&logo=qt&logoColor=white)
![CMake](https://img.shields.io/badge/CMake-064F8C?style=for-the-badge&logo=cmake&logoColor=white)
![MinGW](https://img.shields.io/badge/MinGW-4EAA25?style=for-the-badge&logo=gnu&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-success?style=for-the-badge)

![Visitors](https://visitor-badge.laobi.icu/badge?page_id=MainSoheil.AutoLux)
![GitHub stars](https://img.shields.io/github/stars/MainSoheil/AutoLux?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/MainSoheil/AutoLux?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/MainSoheil/AutoLux?style=for-the-badge)

<br>

</div>

**Auto Lux** is a modern desktop application designed for car dealership management. Built with **C++20 and Qt 6**, the project combines the performance and flexibility of C++ with the modern declarative UI capabilities of **QML**.

The application provides a centralized dashboard for monitoring dealership activity, managing vehicle inventory, registering customers, and handling sales. Its interface follows a clean, component-based architecture with reusable QML components for navigation, buttons, inputs, cards, and other UI elements.

![Auto Lux Screenshot](/assets/image/screenshot.png)

## Features

* **Dashboard Overview:** Displays key dealership statistics such as total vehicles, customers, active deals, and sales.
* **Inventory Management:** Provides an overview of available vehicles with information such as model, mileage, transmission, price, and availability.
* **Quick Actions:** Provides convenient access to common operations such as adding vehicles, registering customers, and creating deals.
* **Sidebar Navigation:** Provides structured navigation between different sections of the application.
* **Reusable QML Components:** Uses reusable UI components to maintain consistency and simplify interface development.
* **Modern Desktop UI:** A responsive and visually focused interface built with Qt Quick and QML.
* **C++ and QML Integration:** Combines C++ application logic with QML-based presentation and user interaction.

## Tech Stack

| Technology              | Purpose                                     |
| ----------------------- | ------------------------------------------- |
| **C++20**               | Application logic and backend functionality |
| **Qt 6**                | Application framework                       |
| **Qt Quick**            | Modern declarative UI framework             |
| **QML**                 | User interface and component development    |
| **Qt Quick Controls 2** | UI controls and application components      |
| **CMake**               | Build configuration and project management  |
| **MinGW 64-bit**        | Compiler and Windows toolchain              |

## Build

### Prerequisites

Before building the project, make sure you have:

* Qt 6 with the **MinGW 64-bit** toolchain
* CMake
* MinGW 64-bit compiler

### Clone the Repository

```bash
git clone https://github.com/MainSoheil/AutoLux.git
cd AutoLux
```

### Build

Configure and build the project using CMake:

```bash
cmake -S . -B build
cmake --build build --config Release
```

## Project Goals

Auto Lux was created as a practical project for exploring **C++/QML integration**, modern Qt application development, reusable UI architecture, and CMake-based C++ project configuration.

The project focuses on building a desktop application with a clear separation between application logic and presentation while maintaining a lightweight and responsive user experience.

## License

This project is licensed under the MIT License.

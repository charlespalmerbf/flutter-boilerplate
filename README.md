Blue Frontier Flutter Boilerplate App
=======================

##  1. <a name='TOC'></a>TOC

<!-- vscode-markdown-toc -->
* 1. [TOC](#1-toc)
* 2. [Introduction](#2-introduction)
* 3. [What Is Dart?](#3-what-is-dart)
* 4. [What Is Flutter?](#4-what-is-flutter)
* 5. [Installing Flutter On Windows](#5-installing-flutter-on-windows)
* 6. [Installing Flutter On MacOS](#6-installing-flutter-on-macOS)
* 7. [Installing Flutter On Linux](#7-installing-flutter-on-linux)
* 8. [How Do Install Packages with Flutter?](#8-how-do-install-packages-with-flutter)
* 9. [Getting Started](9-getting-started)
* 10. [Project Structure](#10-project-structure)
* 11. [Included Packages](#11-included-packages)
* 12. [Conventional Commits](#12-conventional-commits)
* 13. [Pull Requests, Approvals & Releases](#13-pull-requests-approvals--releases)

<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

##  2. <a name='Introduction'></a>Introduction

This is a boilerplate Flutter application that you can use as a starting point for your next project. It includes a basic project structure, some sample code, and commonly used libraries and packages that you can easily extend or modify to suit your needs.

##  3. <a name='WhatIsDart'></a>What Is Dart?
---------------
Dart is a programming language developed by Google. It is designed for building high-performance, scalable, and cross-platform applications. Dart is the primary language used for developing applications using the Flutter framework, but it can also be used independently for other types of projects.

Key features and characteristics of Dart include:

1.  Object-Oriented: Dart is an object-oriented language, meaning it supports concepts such as classes, inheritance, interfaces, and encapsulation. It provides a familiar syntax for developers coming from languages like Java, C++, or C#.

2.  Strong Typing: Dart supports static typing, where variable types are declared explicitly. However, Dart also includes a type inference mechanism, allowing developers to omit type annotations when the type can be inferred by the compiler.

3.  Just-in-Time (JIT) Compilation: During development, Dart uses a just-in-time compiler, which enables hot reload and faster development cycles. This means changes in code can be immediately seen without the need to restart the entire application.

4.  Ahead-of-Time (AOT) Compilation: For production deployment, Dart applications can be compiled ahead of time into efficient native machine code, providing performance similar to other compiled languages.

5.  Garbage Collection: Dart includes automatic memory management through garbage collection. Developers do not need to explicitly manage memory allocation and deallocation, as the Dart runtime takes care of memory cleanup for unused objects.

6.  Asynchronous Programming: Dart has built-in support for asynchronous programming using features like async and await. This allows developers to write code that is non-blocking and can handle tasks such as network requests or file I/O efficiently.

7.  Cross-Platform Compatibility: Dart can be used for developing applications across multiple platforms, including mobile (iOS and Android), web, desktop (Windows, macOS, Linux), and even embedded systems.

8.  Growing Ecosystem: Dart has an expanding ecosystem with a variety of libraries and packages available. These packages can be easily integrated into Dart projects using the package manager called Pub.

Dart is known for its simplicity, ease of learning, and its close integration with the Flutter framework. It provides a robust foundation for building modern applications with excellent performance, productivity, and maintainability.

##  4. <a name='WhatIsFlutter'></a>What Is Flutter?
---------------
Flutter is an open-source UI (User Interface) software development kit (SDK) developed by Google. It allows developers to build beautiful and high-performance native applications for mobile, web, and desktop platforms from a single codebase.

Key features and characteristics of Flutter include:

1.  Fast Development: Flutter's hot reload feature enables developers to see changes in real-time, speeding up the development process and allowing for quick experimentation.

2.  Expressive UI: Flutter offers a rich set of pre-designed and customizable UI widgets, allowing developers to create visually stunning and responsive user interfaces.

3.  Cross-Platform Development: With Flutter, you can write code once and deploy it to multiple platforms, including iOS, Android, web, desktop (Windows, macOS, Linux), and even embedded devices.

4.  Native Performance: Flutter applications are compiled directly to native machine code, allowing them to perform at near-native speeds. This is achieved through Flutter's use of the Skia graphics engine and the Dart platform.

5.  Single Codebase: Flutter follows a reactive and declarative programming style, where the user interface is described using widgets. This approach allows developers to maintain a single codebase for multiple platforms, reducing development and maintenance efforts.

6.  Access to Native Features: Flutter provides access to a wide range of native features and APIs, allowing developers to leverage device-specific capabilities seamlessly.

7.  Vibrant Ecosystem: Flutter has a thriving community and ecosystem that contributes to its growth. The Flutter ecosystem includes packages, tools, and libraries available through pub.dev, which enhance Flutter's capabilities and simplify common tasks.

8.  Material Design and Cupertino Style: Flutter offers widgets that adhere to the Material Design guidelines for Android apps and the Cupertino design language for iOS apps, ensuring a native look and feel on each platform.

Flutter has gained popularity among developers due to its productivity, fast development cycle, and ability to create visually appealing and performant applications across multiple platforms. It continues to evolve and improve, with regular updates and contributions from both Google and the Flutter community.

##  5. <a name='InstallingFlutterOnWindows'></a>Installing Flutter On Windows
---------------

To get started, you'll need to have Flutter installed on your local machine. If you haven't already, please follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install) for your operating system or follow the instructions below.

Note: This guide assumes you're using a Windows operating system. If you're on macOS or Linux, the installation process might vary slightly.

1.  System Requirements:

    -   Operating System: Windows 7 or later (64-bit)
    -   Disk Space: 400 MB (excluding IDE/tooling)
    -   Tools: Git for Windows (if not already installed)
2.  Download Flutter:

    -   Visit the Flutter SDK download page: <https://flutter.dev/docs/get-started/install/windows>
    -   Click on the "Windows" button to download the Flutter SDK zip file.
    -   Extract the downloaded zip file to a suitable location on your computer (e.g., `C:\flutter`).
3.  Set Up Environment Variables:

    -   Open the Start menu and search for "environment variables."
    -   Click on "Edit the system environment variables."
    -   In the System Properties window, click on the "Environment Variables" button.
    -   In the "User variables" section, click on "New."
    -   Set the variable name as `FLUTTER_HOME` and the variable value as the path to the Flutter SDK directory (e.g., `C:\flutter`).
    -   Find the "Path" variable in the "User variables" section and click on "Edit."
    -   Add a new entry with the path `C:\flutter\bin` (replace `C:\flutter` with the actual path to your Flutter SDK directory).
    -   Click "OK" to save the changes.
4.  Install Flutter Dependencies:

    -   Open a command prompt or PowerShell window.
    -   Run the following command to check if your system is ready for Flutter: `flutter doctor`
    -   If any dependencies are missing, the command will provide guidance on how to install them. Follow the instructions to install the missing dependencies.
5.  Set Up Android Development Environment:

    -   Download and install Android Studio from: <https://developer.android.com/studio>
    -   Follow the installation instructions provided by the Android Studio installer.
    -   Open Android Studio, go to "Configure" in the welcome screen, and select "SDK Manager."
    -   Under the "SDK Platforms" tab, check the box for the latest Android SDK version.
    -   Go to the "SDK Tools" tab and check the box for "Android SDK Build-Tools" and "Android Emulator" (select the latest versions available).
    -   Click "Apply" and then "OK" to install the selected components.
6.  Set Up Android Emulator:

    -   Open Android Studio.
    -   Click on the "AVD Manager" icon in the toolbar.
    -   In the AVD Manager window, click on "Create Virtual Device."
    -   Select a device definition and click "Next."
    -   Choose a system image (recommended to use the x86 image for better performance) and click "Next."
    -   Give your virtual device a name, and click "Finish" to create it.
    -   Close the AVD Manager.
7.  Verify Flutter Installation:

    -   Open a new command prompt or PowerShell window.
    -   Run the command `flutter doctor` to verify that everything is set up correctly.
    -   If any issues are reported, follow the instructions provided to resolve them.

Congratulations! You've successfully installed Flutter on your Windows system. Now you can start developing cross-platform apps using Flutter. Make sure to keep an eye on the Flutter documentation and official resources for further guidance on using Flutter and building your apps. Happy coding!

##  6. <a name='InstallingFlutterOnMacOS'></a>Installing Flutter On MacOS
---------------
Note: This guide assumes you're using a macOS operating system.

1.  System Requirements:

    -   Operating System: macOS (64-bit)
    -   Disk Space: 400 MB (excluding IDE/tooling)
    -   Tools: Git (if not already installed)
2.  Download Flutter:

    -   Visit the Flutter SDK download page: <https://flutter.dev/docs/get-started/install/macos>
    -   Click on the "macOS" button to download the Flutter SDK zip file.
    -   Open Terminal, navigate to the directory where you want to store Flutter (e.g., `cd ~/development`) and execute the following command to download and extract the Flutter SDK:

        pythonCopy code

        `curl -O https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_2.8.1-stable.zip
        unzip flutter_macos_2.8.1-stable.zip`

3.  Set Up Environment Variables:

    -   Open Terminal and use a text editor to open the `.bash_profile` file in your home directory (e.g., `nano ~/.bash_profile`).
    -   Add the following lines to the end of the file:

        bashCopy code

        `export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"
        export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin/cache/dart-sdk/bin"`

        Replace `[PATH_TO_FLUTTER_GIT_DIRECTORY]` with the path to the Flutter SDK directory you extracted in step 2 (e.g., `~/development/flutter`).
    -   Save the file and exit the text editor.
    -   In Terminal, run the following command to apply the changes:

        bashCopy code

        `source ~/.bash_profile`

4.  Install Flutter Dependencies:

    -   In Terminal, run the following command to check if your system is ready for Flutter:

        Copy code

        `flutter doctor`

    -   If any dependencies are missing, the command will provide guidance on how to install them. Follow the instructions to install the missing dependencies.
5.  Set Up iOS Development Environment:

    -   Install Xcode from the Mac App Store.
    -   Once Xcode is installed, open it and accept the license agreement.
    -   Go to "Preferences" from the top menu and navigate to the "Locations" tab.
    -   Make sure the "Command Line Tools" option is set to the installed version of Xcode.
6.  Verify Flutter Installation:

    -   Open Terminal.
    -   Run the command `flutter doctor` to verify that everything is set up correctly.
    -   If any issues are reported, follow the instructions provided to resolve them.

Congratulations! You've successfully installed Flutter on your macOS system. Now you can start developing cross-platform apps using Flutter. Make sure to keep an eye on the Flutter documentation and official resources for further guidance on using Flutter and building your apps. Happy coding!

##  7. <a name='InstallingFlutterOnLinux'></a>Installing Flutter On Linux
---------------
Note: This guide assumes you're using a Linux distribution. The instructions may vary slightly depending on your specific distribution.

1.  System Requirements:

    -   Operating System: Linux (64-bit)
    -   Disk Space: 400 MB (excluding IDE/tooling)
    -   Tools: Git, wget (if not already installed)
2.  Download Flutter:

    -   Open a terminal window.
    -   Navigate to the directory where you want to store Flutter (e.g., `cd ~/development`).
    -   Run the following commands to download and extract the Flutter SDK:

        arduinoCopy code

        `wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_2.8.1-stable.tar.xz
        tar xf flutter_linux_2.8.1-stable.tar.xz`

3.  Set Up Environment Variables:

    -   Open a terminal and use a text editor to open the `.bashrc` file in your home directory (e.g., `nano ~/.bashrc`).
    -   Add the following lines to the end of the file:

        bashCopy code

        `export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"
        export PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin/cache/dart-sdk/bin"`

        Replace `[PATH_TO_FLUTTER_GIT_DIRECTORY]` with the path to the Flutter SDK directory you extracted in step 2 (e.g., `~/development/flutter`).
    -   Save the file and exit the text editor.
    -   In the terminal, run the following command to apply the changes:

        bashCopy code

        `source ~/.bashrc`

4.  Install Flutter Dependencies:

    -   In the terminal, run the following command to check if your system is ready for Flutter:

        Copy code

        `flutter doctor`

    -   If any dependencies are missing, the command will provide guidance on how to install them. Follow the instructions to install the missing dependencies.
5.  Set Up Android Development Environment (Optional):

    -   If you want to develop Flutter apps for Android, you'll need to set up the Android development environment. Follow these steps:
        -   Install OpenJDK 8 or later.
        -   Download and install Android Studio from: <https://developer.android.com/studio>
        -   Open Android Studio and go to "Configure" in the welcome screen, then select "SDK Manager."
        -   Under the "SDK Platforms" tab, check the box for the latest Android SDK version.
        -   Go to the "SDK Tools" tab and check the box for "Android SDK Build-Tools" and "Android Emulator" (select the latest versions available).
        -   Click "Apply" and then "OK" to install the selected components.
6.  Verify Flutter Installation:

    -   Open a terminal.
    -   Run the command `flutter doctor` to verify that everything is set up correctly.
    -   If any issues are reported, follow the instructions provided to resolve them.

Congratulations! You've successfully installed Flutter on your Linux machine. Now you can start developing cross-platform apps using Flutter. Make sure to keep an eye on the Flutter documentation and official resources for further guidance on using Flutter and building your apps. Happy coding!

##  8. <a name='HowDoInstallPackageswithFlutter'></a>How Do I Install Packages with Flutter?
---------------
<https://pub.dev/> is the official package repository for Dart and Flutter. It is a website where developers can discover, publish, and download packages for their Dart and Flutter projects.

On pub.dev, you can find a vast collection of open-source packages contributed by the community. These packages provide various functionalities, utilities, and libraries that can be used to enhance your Dart and Flutter projects.

Developers can search for packages on pub.dev using keywords, browse through different categories, and view detailed information about each package, including its version history, documentation, and usage examples.

When you find a package that suits your needs, you can easily integrate it into your Dart or Flutter project by adding its dependency in your `pubspec.yaml` file. The Flutter tooling uses pub.dev as the default package source, making it convenient for developers to manage dependencies and keep their projects up to date.

Pub.dev also provides features like versioning, package analysis, and documentation generation, which make it a valuable resource for the Dart and Flutter development community.

##  9. <a name='StatefullVsStatelessWidgetsInFlutter'></a>Statefull vs Stateless Widgets In Flutter?
---------------
In Flutter, there are two main types of components: stateless widgets and stateful widgets. Understanding the differences between these two types is crucial for building Flutter applications effectively.

Stateless Widgets: A stateless widget, as the name suggests, is a widget that does not have any mutable state. Once created, its properties (or inputs) remain constant throughout its lifetime. Here are some characteristics of stateless widgets:

1.  Immutable: Stateless widgets are immutable, meaning their properties cannot be changed once they are initialized.
2.  No Internal State: Stateless widgets do not maintain any internal state that can change over time.
3.  Rebuild on Demand: Stateless widgets are rebuilt only when their parent widget rebuilds or when the app's state changes.
4.  Simple and Lightweight: Stateless widgets are simpler and lighter in terms of code complexity and memory usage compared to stateful widgets.

Stateless widgets are ideal for representing UI components that do not need to change their appearance or behavior based on user interactions or application state. Examples of stateless widgets include buttons, icons, labels, and static images.

Stateful Widgets: In contrast, stateful widgets can maintain mutable state within themselves, allowing them to change and update dynamically. Here are some characteristics of stateful widgets:

1.  Mutable State: Stateful widgets can have mutable properties that can be modified during their lifetime.
2.  Internal State Management: Stateful widgets manage their own internal state and can update their appearance based on that state.
3.  Rebuild on State Change: Stateful widgets are rebuilt automatically when their internal state changes.
4.  Complexity and Overhead: Stateful widgets require more code and memory overhead compared to stateless widgets due to managing internal state.

Stateful widgets are typically used for interactive components that respond to user input or that need to maintain their own state. Examples include forms, scrollable lists, video players, and dynamic data-driven UI elements.

To summarize, when choosing between stateless and stateful widgets:

-   Use stateless widgets for static UI components that don't change their appearance or behavior based on user interaction or application state.
-   Use stateful widgets when you need to manage and update mutable state within the widget itself or when the component needs to respond to user input or changes in the application state.

Note that Flutter provides various state management approaches (such as Provider, Bloc, MobX, etc.) that can be used with both stateless and stateful widgets to manage application-wide state and handle complex state interactions efficiently.

##  10. <a name='GettingStarted'></a>Getting Started
---------------
Once you have Flutter installed, you can clone this repository to your local machine using the following command:

`git clone https://github.com/charlespalmerbf/flutter-boilerplate.git`

Next, navigate to the project directory and run the following command to download the project dependencies:

`flutter pub get`

Finally, run the app on your preferred device or emulator using the following command:

`flutter run`

##  11. <a name='ProjectStructure'></a>Project Structure
-----------------

This project follows the standard Flutter project structure, with a few additions to help you get started quickly:

```.
├── lib/                      # Contains the main application code
│   ├── models/               # Data models used in the app
│   ├── pages/                # App screens/pages
│   ├── images/               # Assets and images
│   ├── components/           # Reusable widgets
│   ├── services/             # Auth service methods
│   ├── main.dart             # Entry point of the application
│   └── firebase_options.dart # Defines firebase configuration
├── assets/                   # Contains static assets used in the app
├── test/                     # Contains unit and widget tests
├── ios/                      # iOS specific files
├── android/                  # Android specific files
├── pubspec.yaml              # Flutter project configuration file
└── README.md                 # This file
```

##  12. <a name='IncludedPackages'></a>Included Packages
-----------------

This boilerplate app comes with several commonly used Flutter packages pre-installed, including:

-   [dio](https://pub.dev/packages/dio): A powerful Http client for Dart, which supports Interceptors, Global configuration, FormData, Request Cancellation, File downloading, Timeout etc.
-   [flutter_bloc](https://pub.dev/packages/flutter_bloc): Flutter Widgets that make it easy to implement the BLoC (Business Logic Component) design pattern.
-   [equatable](https://pub.dev/packages/equatable): An abstract class that helps to implement value-based equality without needing to explicitly override == and hashCode.
-   [shared_preferences](https://pub.dev/packages/shared_preferences): A plugin for reading and writing simple key-value pairs to disk.
-   [flutter_svg](https://pub.dev/packages/flutter_svg): A Flutter SVG rendering library to provide the assets into widgets.
-   [get_it](https://pub.dev/packages/get_it): A simple Service Locator for Dart and Flutter projects with some additional goodies highly inspired by [Splat](https://github.com/reactiveui/splat).

These packages are included to help you get started more quickly, but you can remove or add any packages you need for your specific project requirements.

##  13. <a name='ConventionalCommits'></a>Conventional Commits

This project uses a specification called **Conventional Commits**, please **ensure** this specification is followed when commiting code to this project.

Guide: https://www.conventionalcommits.org/en/v1.0.0/

##  14. <a name='PullRequestsApprovalsReleases'></a>Pull Requests, Approvals & Releases

###### Creating the develop release pull request

Pull Requests made to this project are required in order to merge to **develop** or **main** 

When submitting a Pull Request, at least one approval is required before merging. 

When constructing a release, ensure that a release branch is created based off of the contents of develop, the only changes contained within this branch should be the version numbers in **package.json** and android's **build.gradle**. 

The Pull Request should be named as **[develop] release vX.Y.Z**

###### Creating the main release pull request

Once this Pull Request has been created, you will need to generate a new Pull Request based off **main** comparing the **develop** release branch you have just created, this should ensure that all changes that have been made to **develop** since the last release are contained within this update. 

The Pull Request should be named as **[main] release vX.Y.Z**

###### Creating the release tag

Once this has been done and both Pull Requests have been merged, a release tag should be generated, named as **vX.Y.Z**

Contributing
------------

If you find any bugs or issues with this boilerplate app, please feel free to [open an issue](https://github.com/charlespalmerbf/flutter-boilerplate/issues) or [submit a pull request](https://github.com/charlespalmerbf/flutter-boilerplate/pulls). 

Contributions to this project are welcome. To contribute, follow these steps:

1.  Fork this repository.
2.  Create a new branch: `git checkout -b <branch-name>`
3.  Make your changes and commit them: `git commit -am 'Add some feature'`
4.  Push to the branch: `git push origin <branch-name>`
5.  Submit a pull request.

License
-------

This project is licensed under the MIT License - see the [LICENSE.md](https://chat.openai.com/LICENSE.md) file for details.

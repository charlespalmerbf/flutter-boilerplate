Blue Frontier Flutter Boilerplate App
=======================

This is a boilerplate Flutter application that you can use as a starting point for your next project. It includes a basic project structure, some sample code, and commonly used libraries and packages that you can easily extend or modify to suit your needs.

Installing Flutter On Windows
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

Installing Flutter On MacOS
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

Installing Flutter On Linux
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

How Do Install Packages with Flutter?
---------------
<https://pub.dev/> is the official package repository for Dart and Flutter. It is a website where developers can discover, publish, and download packages for their Dart and Flutter projects.

On pub.dev, you can find a vast collection of open-source packages contributed by the community. These packages provide various functionalities, utilities, and libraries that can be used to enhance your Dart and Flutter projects.

Developers can search for packages on pub.dev using keywords, browse through different categories, and view detailed information about each package, including its version history, documentation, and usage examples.

When you find a package that suits your needs, you can easily integrate it into your Dart or Flutter project by adding its dependency in your `pubspec.yaml` file. The Flutter tooling uses pub.dev as the default package source, making it convenient for developers to manage dependencies and keep their projects up to date.

Pub.dev also provides features like versioning, package analysis, and documentation generation, which make it a valuable resource for the Dart and Flutter development community.

Getting Started
---------------
Once you have Flutter installed, you can clone this repository to your local machine using the following command:

`git clone https://github.com/charlespalmerbf/flutter-boilerplate.git`

Next, navigate to the project directory and run the following command to download the project dependencies:

`flutter pub get`

Finally, run the app on your preferred device or emulator using the following command:

`flutter run`

Project Structure
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

Included Packages
-----------------

This boilerplate app comes with several commonly used Flutter packages pre-installed, including:

-   [dio](https://pub.dev/packages/dio): A powerful Http client for Dart, which supports Interceptors, Global configuration, FormData, Request Cancellation, File downloading, Timeout etc.
-   [flutter_bloc](https://pub.dev/packages/flutter_bloc): Flutter Widgets that make it easy to implement the BLoC (Business Logic Component) design pattern.
-   [equatable](https://pub.dev/packages/equatable): An abstract class that helps to implement value-based equality without needing to explicitly override == and hashCode.
-   [shared_preferences](https://pub.dev/packages/shared_preferences): A plugin for reading and writing simple key-value pairs to disk.
-   [flutter_svg](https://pub.dev/packages/flutter_svg): A Flutter SVG rendering library to provide the assets into widgets.
-   [get_it](https://pub.dev/packages/get_it): A simple Service Locator for Dart and Flutter projects with some additional goodies highly inspired by [Splat](https://github.com/reactiveui/splat).

These packages are included to help you get started more quickly, but you can remove or add any packages you need for your specific project requirements.

## Conventional Commits

This project uses a specification called **Conventional Commits**, please **ensure** this specification is followed when commiting code to this project.

Guide: https://www.conventionalcommits.org/en/v1.0.0/

## Pull Requests, Approvals & Releases

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

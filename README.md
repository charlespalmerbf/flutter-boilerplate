Blue Frontier Flutter Boilerplate App
=======================

This is a boilerplate Flutter application that you can use as a starting point for your next project. It includes a basic project structure, some sample code, and commonly used libraries and packages that you can easily extend or modify to suit your needs.

Getting Started
---------------

To get started, you'll need to have Flutter installed on your local machine. If you haven't already, please follow the [Flutter installation guide](https://flutter.dev/docs/get-started/install) for your operating system.

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

# MyShoopApp

A Flutter e-commerce application with product browsing, authentication, categories, favorites, shopping cart, search, user profile, and address management.

## Overview

**MyShoopApp** is a mobile shopping application built with Flutter and Dart. The app communicates with an online shop API and uses Cubit/BLoC for state management. It includes the main flows expected in a shopping experience, from signing in and browsing products to managing favorites, cart items, addresses, and user settings.

## Features

- User registration and login
- Home screen with products and categories
- Product details and category-based browsing
- Product search
- Favorites management
- Shopping cart management
- User profile and account settings
- Change-password screen
- Address listing, adding, updating, and deleting
- FAQ/help screen
- Persistent local preferences
- Local SQLite database examples
- Loading, error, and empty-state handling

## Tech Stack

- **Flutter**
- **Dart**
- **Cubit/BLoC** for state management
- **Dio** for HTTP networking
- **Shared Preferences** for local key-value storage
- **SQLite / sqflite** for local database operations
- **Intl** for formatting and localization utilities
- **Carousel Slider** and **Smooth Page Indicator** for UI components

## Project Structure

The Flutter application is located inside the `new_shopapp_apply` directory:

```text
MyShoopApp/
├── README.md
└── new_shopapp_apply/
    ├── android/                 # Android platform files
    ├── assets/images/           # Application images and branding assets
    ├── ios/                     # iOS platform files
    ├── lib/
    │   ├── cubit/               # Main Cubit/BLoC classes and states
    │   ├── Layouts/             # Main application layouts
    │   ├── models/              # API response and domain models
    │   ├── modules/             # Application screens
    │   ├── remoteNetwork/       # API and cache helpers
    │   ├── shared/              # Shared utilities and components
    │   └── main.dart             # Application entry point
    ├── pubspec.yaml             # Flutter dependencies and assets
    └── analysis_options.yaml    # Dart analyzer configuration
```

## Requirements

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Dart SDK compatible with the project constraint: `>=2.17.6 <3.0.0`
- Android Studio or VS Code with Flutter and Dart extensions
- An Android emulator, iOS simulator, or physical device
- Network access for the remote shop API

## Installation and Running

Clone the repository and enter the Flutter project directory:

```bash
git clone https://github.com/mahmoudshahin1/MyShoopApp.git
cd MyShoopApp/new_shopapp_apply
flutter pub get
flutter run
```

To run the project on a specific device, first check the available devices:

```bash
flutter devices
flutter run -d <device-id>
```

## Development Commands

Run static analysis:

```bash
cd new_shopapp_apply
flutter analyze
```

Run the test suite:

```bash
flutter test
```

Build an Android APK:

```bash
flutter build apk --release
```

Build an Android App Bundle for Google Play:

```bash
flutter build appbundle --release
```

## API and Configuration

The application uses `Dio` for remote API requests. Before running the app, verify the API base URL and request configuration in:

```text
new_shopapp_apply/lib/remoteNetwork/dioHelper.dart
```

Do not commit private API keys, access tokens, or other credentials to the repository. Use a secure configuration approach for production builds.

## State Management

Application state is organized using Cubit/BLoC classes. The main state-management files are located in:

```text
new_shopapp_apply/lib/cubit/
```

The project also contains database-related Cubit files under:

```text
new_shopapp_apply/lib/layout_data_base/cubit/
```

## Screens and Main Flows

The `modules` directory contains screens for authentication, the home page, categories, products, search, cart, favorites, profile, addresses, help, and account settings.

## Screenshots

Screenshots can be added here to document the main application screens:

```markdown
![Home screen](path/to/home-screen.png)
![Product screen](path/to/product-screen.png)
```

## Roadmap

- [ ] Add automated unit and widget tests
- [ ] Improve API and environment configuration
- [ ] Add payment and order-tracking flows
- [ ] Add localization support
- [ ] Improve accessibility and responsive layouts
- [ ] Prepare production release configuration

## Contributing

Contributions and suggestions are welcome:

1. Fork the repository.
2. Create a feature branch: `git checkout -b feature/your-feature`.
3. Make and test your changes.
4. Commit your changes with a clear message.
5. Open a pull request describing the update.

## License

No license has been specified for this project yet. Until a license is added, all rights are reserved by the repository owner.

## Author

**Mahmoud Shahin**

- GitHub: [@mahmoudshahin1](https://github.com/mahmoudshahin1)
- Repository: [MyShoopApp](https://github.com/mahmoudshahin1/MyShoopApp)

MyShoopApp
A Flutter e-commerce application with product browsing, authentication, categories, favorites, shopping cart, search, user profile, and address management.
Overview
MyShoopApp is a mobile shopping application built with Flutter and Dart. The app communicates with an online shop API and uses Cubit/BLoC for state management. It includes the main flows expected in a shopping experience, from signing in and browsing products to managing favorites, cart items, addresses, and user settings.
Features
User registration and login
Home screen with products and categories
Product details and category-based browsing
Product search
Favorites management
Shopping cart management
User profile and account settings
Change-password screen
Address listing, adding, updating, and deleting
FAQ/help screen
Persistent local preferences
Local SQLite database examples
Loading, error, and empty-state handling
Tech Stack
Flutter
Dart
Cubit/BLoC for state management
Dio for HTTP networking
Shared Preferences for local key-value storage
SQLite / sqflite for local database operations
Intl for formatting and localization utilities
Carousel Slider and Smooth Page Indicator for UI components
Project Structure
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
Requirements
Flutter SDK
Dart SDK compatible with the project constraint: `>=2.17.6 <3.0.0`
Android Studio or VS Code with Flutter and Dart extensions
An Android emulator, iOS simulator, or physical device
Network access for the remote shop API
Installation and Running
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
Development Commands
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
API and Configuration
The application uses `Dio` for remote API requests. Before running the app, verify the API base URL and request configuration in:
```text
new_shopapp_apply/lib/remoteNetwork/dioHelper.dart
```
Do not commit private API keys, access tokens, or other credentials to the repository. Use a secure configuration approach for production builds.
State Management
Application state is organized using Cubit/BLoC classes. The main state-management files are located in:
```text
new_shopapp_apply/lib/cubit/
```
The project also contains database-related Cubit files under:
```text
new_shopapp_apply/lib/layout_data_base/cubit/
```
Screens and Main Flows
The `modules` directory contains screens for authentication, the home page, categories, products, search, cart, favorites, profile, addresses, help, and account settings.
Project Images
The repository includes visual assets used by the shopping experience. They are displayed below directly from the project files so they will appear on GitHub after the changes are pushed.
Shop Mart Branding
![Shop Mart logo](https://private-us-east-1.manuscdn.com/sessionFile/K3uYpghHLzS7OL1f2hPKMm/sandbox/A8lS4bKmFFaRBq5tdpo8AL-images_1788203292584_na1fn_L2hvbWUvdWJ1bnR1L015U2hvb3BBcHAvbmV3X3Nob3BhcHBfYXBwbHkvYXNzZXRzL2ltYWdlcy9TaG9wTG9nbw.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvSzN1WXBnaEhMelM3T0wxZjJoUEtNbS9zYW5kYm94L0E4bFM0YkttRkZhUkJxNXRkcG84QUwtaW1hZ2VzXzE3ODgyMDMyOTI1ODRfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwwMTVVMmh2YjNCQmNIQXZibVYzWDNOb2IzQmhjSEJmWVhCd2JIa3ZZWE56WlhSekwybHRZV2RsY3k5VGFHOXdURzluYncucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNzkwODEyODAwfX19XX0_&Key-Pair-Id=K2QY5QTL8JSY6C&Signature=MEUCIQCmVMuUpXu06EGShPRE98Z0n9Zsb42GMP73vTb4GKImTgIgTZy2BJqQXAA9Rlg50LkswAEWcOG6HSqf~r1mhEVG8Uw_)
Online Shopping
![Online shopping illustration](https://private-us-east-1.manuscdn.com/sessionFile/K3uYpghHLzS7OL1f2hPKMm/sandbox/A8lS4bKmFFaRBq5tdpo8AL-images_1788203292584_na1fn_L2hvbWUvdWJ1bnR1L015U2hvb3BBcHAvbmV3X3Nob3BhcHBfYXBwbHkvYXNzZXRzL2ltYWdlcy9PbmxpbmVTaG9w.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvSzN1WXBnaEhMelM3T0wxZjJoUEtNbS9zYW5kYm94L0E4bFM0YkttRkZhUkJxNXRkcG84QUwtaW1hZ2VzXzE3ODgyMDMyOTI1ODRfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwwMTVVMmh2YjNCQmNIQXZibVYzWDNOb2IzQmhjSEJmWVhCd2JIa3ZZWE56WlhSekwybHRZV2RsY3k5UGJteHBibVZUYUc5dy5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTA4MTI4MDB9fX1dfQ__&Key-Pair-Id=K2QY5QTL8JSY6C&Signature=MEQCIDCiT4d2dRzn5~GO7-DuDRCWzkafJlBQ5bMhR8cYWQhyAiAfNC1IUT5S0xFQhjGgI3IjuReXdBVKP3R4gyg5LsV4qA__)
Delivery
![Delivery illustration](https://private-us-east-1.manuscdn.com/sessionFile/K3uYpghHLzS7OL1f2hPKMm/sandbox/A8lS4bKmFFaRBq5tdpo8AL-images_1788203292584_na1fn_L2hvbWUvdWJ1bnR1L015U2hvb3BBcHAvbmV3X3Nob3BhcHBfYXBwbHkvYXNzZXRzL2ltYWdlcy9EZWxpdmVyeQ.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvSzN1WXBnaEhMelM3T0wxZjJoUEtNbS9zYW5kYm94L0E4bFM0YkttRkZhUkJxNXRkcG84QUwtaW1hZ2VzXzE3ODgyMDMyOTI1ODRfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwwMTVVMmh2YjNCQmNIQXZibVYzWDNOb2IzQmhjSEJmWVhCd2JIa3ZZWE56WlhSekwybHRZV2RsY3k5RVpXeHBkbVZ5ZVEucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNzkwODEyODAwfX19XX0_&Key-Pair-Id=K2QY5QTL8JSY6C&Signature=MEQCIHap8UeXamof2SD8gGUINgM7LTrmhIws7jD6qOWIoygyAiBZWFFxx2ENRZoUN55wcrBGVO-tM-ogJPNGI6MlShe0LQ__)
Payment
![Payment illustration](https://private-us-east-1.manuscdn.com/sessionFile/K3uYpghHLzS7OL1f2hPKMm/sandbox/A8lS4bKmFFaRBq5tdpo8AL-images_1788203292584_na1fn_L2hvbWUvdWJ1bnR1L015U2hvb3BBcHAvbmV3X3Nob3BhcHBfYXBwbHkvYXNzZXRzL2ltYWdlcy9QYXltZW50.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvSzN1WXBnaEhMelM3T0wxZjJoUEtNbS9zYW5kYm94L0E4bFM0YkttRkZhUkJxNXRkcG84QUwtaW1hZ2VzXzE3ODgyMDMyOTI1ODRfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwwMTVVMmh2YjNCQmNIQXZibVYzWDNOb2IzQmhjSEJmWVhCd2JIa3ZZWE56WlhSekwybHRZV2RsY3k5UVlYbHRaVzUwLnBuZyIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTc5MDgxMjgwMH19fV19&Key-Pair-Id=K2QY5QTL8JSY6C&Signature=MEYCIQDGOTrM1KexN5o783G-jSUpxENHEf~XrwMfvivA4EWjIgIhANvN68PHXTo5Pe7Tl4lL0WshEsyxOP2e75BsJkkZYWLX)
Messenger Support Asset
![Messenger logo](https://private-us-east-1.manuscdn.com/sessionFile/K3uYpghHLzS7OL1f2hPKMm/sandbox/A8lS4bKmFFaRBq5tdpo8AL-images_1788203292584_na1fn_L2hvbWUvdWJ1bnR1L015U2hvb3BBcHAvbmV3X3Nob3BhcHBfYXBwbHkvYXNzZXRzL2ltYWdlcy9GYWNlYm9vay1NZXNzZW5nZXItTG9nby1QTkctSGlnaC1RdWFsaXR5LUltYWdl.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvSzN1WXBnaEhMelM3T0wxZjJoUEtNbS9zYW5kYm94L0E4bFM0YkttRkZhUkJxNXRkcG84QUwtaW1hZ2VzXzE3ODgyMDMyOTI1ODRfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwwMTVVMmh2YjNCQmNIQXZibVYzWDNOb2IzQmhjSEJmWVhCd2JIa3ZZWE56WlhSekwybHRZV2RsY3k5R1lXTmxZbTl2YXkxTlpYTnpaVzVuWlhJdFRHOW5ieTFRVGtjdFNHbG5hQzFSZFdGc2FYUjVMVWx0WVdkbC5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTA4MTI4MDB9fX1dfQ__&Key-Pair-Id=K2QY5QTL8JSY6C&Signature=MEUCIQDjUZsSSvZFNU57CFHerbN1hRJXGTb9rr054STlwJAGngIgaY8crwr4bHyDceaAeqQ-nBBDa1g0rjM58usQltfI~x8_)
> These are the image assets currently available in the repository. Application screen captures can be added later under a dedicated `screenshots/` directory.
Roadmap
[ ] Add automated unit and widget tests
[ ] Improve API and environment configuration
[ ] Add payment and order-tracking flows
[ ] Add localization support
[ ] Improve accessibility and responsive layouts
[ ] Prepare production release configuration
Contributing
Contributions and suggestions are welcome:
Fork the repository.
Create a feature branch: `git checkout -b feature/your-feature`.
Make and test your changes.
Commit your changes with a clear message.
Open a pull request describing the update.
License
No license has been specified for this project yet. Until a license is added, all rights are reserved by the repository owner.
Author
Mahmoud Shahin
GitHub: @mahmoudshahin1
Repository: MyShoopApp

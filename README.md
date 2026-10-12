# RADJ Semester Project

A Flutter Web starter project demonstrating the initial client-side flow:
Home Page → Login Page → Navigation Shell → Dashboard / Module Placeholder.

This covers the first checkpoint: navigation works before any API/database integration.

## Members and Roles

Individual activity.

| Name | Role |
| ---- | ---- |
| Solo Developer | Design, Development, Documentation |

## Technology Stack Used

- Flutter (SDK ^3.13.2) — Flutter Web
- Dart
- Material 3 (`ThemeData`, `ColorScheme.fromSeed`)
- Named routes (`MaterialApp.routes`)
- Reusable widgets (`AppButton`, `AppTextField`)

## Project Structure

```text
lib/
├── main.dart
├── app.dart
├── routes/
│   └── app_routes.dart
├── screens/
│   ├── home_screen.dart
│   ├── login_screen.dart
│   ├── nav_shell.dart
│   └── dashboard_screen.dart
├── widgets/
│   ├── app_button.dart
│   └── app_text_field.dart
├── services/
├── models/
└── constants/
```

## Initial Pages / Screens Included

1. **Home Page** (`/home`) — visible landing page with `Go to Login` button. Uses `Navigator.pushNamed`.
2. **Login Page** (`/login`) — login placeholder with Email + Password fields (`AppTextField`) and Login button (`AppButton`). Uses `Navigator.pushReplacementNamed` to shell.
3. **Navigation Shell** (`/shell`) — proves navigation:
   - `Drawer` menu: Home Page, Login Page, Navigation Shell
   - `BottomNavigationBar`: Dashboard | Modules (via `IndexedStack`)
   - Consistent `AppBar` title per tab
4. **Dashboard / Module Placeholder** (`/dashboard`) — placeholder for future modules. Text only, no API yet.

## How to Run the Flutter Web Project

```bash
# Run the project
flutter pub get
flutter run -d chrome

# Build for web
flutter build web
```

Requirements:
- Flutter SDK installed (`flutter --version`)
- Chrome for web debugging

## Repository Link and First Checkpoint Date

- Repository: https://github.com/joestqrr/radj_semester_project
- First Checkpoint: Initial Pages and Navigation Shell — October 2026

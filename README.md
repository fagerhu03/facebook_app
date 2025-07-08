# Facebook UI Clone in Flutter

A Flutter project that replicates the Facebook mobile interface including:
- Splash screen
- Login screen
- Home screen with stories and post-feed

## 📸 Screenshots

### 🔵 Splash Screen
![Splash Screen](screenshots/splash.png)

### 🔑 Login Screen
![Login Screen](screenshots/login.png)

### 🏠 Home Screen
![Home Screen](screenshots/home.png)

## 📦 Features
- Custom splash screen with Meta branding
- Login UI (email/password + create account)
- Scrollable home screen with:
  - Facebook-style AppBar
  - Horizontal stories with profile overlays
  - Vertical scrollable post feed with image, like/comment/share
- Modular widgets for stories and posts

## 🛠️ Getting Started
Make sure you have Flutter installed. Then:

```bash
flutter pub get
flutter run
```

## 📁 Folder Structure
```bash
lib/
├── main.dart
│   ├── login_screen.dart
│   └── home_screen.dart
├── widgets/
│   ├── post_widget.dart
│   └── stories_widget.dart
assets/
├── logo.png
├── meta_brand.png
├── model1.png, model2.png, ...
├── route_post.png, route_prof.png
 screenshots/
├── facebook.mp4
├── splash_screen.png
├── login_screen.png
└── home_screen.png
```

## ✅ Status
This project is functional and can be used for:
- UI practice
- Flutter layout and state management
- Portfolio demonstrations



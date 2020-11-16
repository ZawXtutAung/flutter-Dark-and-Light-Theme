# flutter_light_and_dark

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## MaterialApp

```dart
 debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
```

## ThemeData

```dart
ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);
```

## Switch Button

```dart
            Switch(
             value: _switch,
              onChanged: (_value) {
                setState(() {
                  _switch = _value;
                });
              },
            )
```
# flutter-Dark-and-Light-Theme

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;

  void changeTheme(ThemeMode newValue) {
    if (newValue != _themeMode) {
      _themeMode = newValue;
      notifyListeners();
    }
  }
}

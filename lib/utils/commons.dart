import 'package:flutter/material.dart';

// Theme App
class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData;
  bool _isDark = false;

  ThemeProvider(this._themeData);

  getTheme() => _themeData;

  bool get isDark => _isDark;

  setTheme(ThemeData theme, bool isDark) {
    _themeData = theme;
    _isDark = isDark;
    notifyListeners();
  }
}

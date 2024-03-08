import 'package:chat_chat/theme/dark_mode.dart';
import 'package:chat_chat/theme/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set setThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      setThemeData = darkMode;
    } else {
      setThemeData = lightMode;
    }
    notifyListeners();
  }
}

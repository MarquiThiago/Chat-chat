import 'package:flutter/material.dart';

ColorScheme _darkColorScheme = ColorScheme.dark(
  brightness: Brightness.dark,
  surface: Colors.grey.shade600,
  primary: Colors.red.shade300,
  secondary: Colors.grey.shade800,
  background: Colors.grey.shade900,
  tertiary: Colors.black,
  inversePrimary: Colors.grey.shade100,
);

ThemeData darkMode = ThemeData(
  colorScheme: _darkColorScheme,
  dialogTheme: DialogTheme(
    alignment: Alignment.center,
    backgroundColor: _darkColorScheme.background,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
  ),
  drawerTheme: const DrawerThemeData(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
    ),
  ),
  appBarTheme:
      AppBarTheme(elevation: 0, backgroundColor: _darkColorScheme.background),
);

import 'package:flutter/material.dart';

ColorScheme _lightColorScheme = ColorScheme.light(
  surface: Colors.grey.shade400,
  primary: Colors.red.shade300,
  secondary: Colors.grey.shade200,
  background: Colors.grey.shade300,
  tertiary: Colors.white,
  inversePrimary: Colors.grey.shade900,
);

ThemeData lightMode = ThemeData(
  colorScheme: _lightColorScheme,
  dialogTheme: DialogTheme(
    alignment: Alignment.center,
    backgroundColor: _lightColorScheme.background,
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
      AppBarTheme(elevation: 0, backgroundColor: _lightColorScheme.surface),
);

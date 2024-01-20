import 'package:flutter/material.dart';

class ColorsThemeData with ChangeNotifier {
  final ThemeData greenTheme = ThemeData.from(
      useMaterial3: true,
      textTheme: TextTheme(
          titleMedium: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white)),
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.green,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.white,
          onError: Colors.green,
          background: Colors.green,
          onBackground: Colors.white,
          surface: Colors.green,
          onSurface: Colors.white));
  final ThemeData redTheme = ThemeData.from(
      useMaterial3: true,
      textTheme: TextTheme(
          titleMedium: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white)),
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.red,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.white,
          onError: Colors.red,
          background: Colors.red,
          onBackground: Colors.white,
          surface: Colors.red,
          onSurface: Colors.white));

  ThemeData _selectedThemeData = ThemeData.from(
      useMaterial3: true,
      textTheme: TextTheme(
          titleMedium: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white)),
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.green,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.white,
          onError: Colors.green,
          background: Colors.green,
          onBackground: Colors.white,
          surface: Colors.green,
          onSurface: Colors.white));

  void switchTheme(bool selected){
    _selectedThemeData=selected ? greenTheme : redTheme;
    notifyListeners();
  }

  ThemeData get selectedThemeData => _selectedThemeData;
}

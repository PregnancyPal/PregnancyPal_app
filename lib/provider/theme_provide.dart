import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  // ThemeData _themeData;

  String currentTheme = 'system';

  ThemeMode get thememode {
    if (currentTheme == 'light') {
      return ThemeMode.light;
    } else if (currentTheme == 'dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  void toggleTheme(String theme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', theme);
    currentTheme = theme;
    notifyListeners();
  }

  getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    currentTheme = prefs.getString('theme') ?? 'system';
    notifyListeners();
  }
}

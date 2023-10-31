import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeClass {
  static const int primaryValue = 0xff1C6BA4;
  static const MaterialColor primarySwatch = MaterialColor(
    primaryValue,
    <int, Color>{
      50: Color(primaryValue),
      100: Color(primaryValue),
      200: Color(primaryValue),
      300: Color(primaryValue),
      400: Color(primaryValue),
      500: Color(primaryValue),
      600: Color(primaryValue),
      700: Color(primaryValue),
      800: Color(primaryValue),
      900: Color(primaryValue),
    },
  );

  Color inputFillColor = Color(0xffEEF6FC);
  Color inputFillColorDark = Color(0xff0E1012);

  ThemeData light = ThemeData(
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.nunitoSansTextTheme().apply(
      bodyColor: const Color(0xff0E1012),
      displayColor: const Color(0xff0E1012),
    ),
    brightness: Brightness.light,
  );

  ThemeData dark = ThemeData(
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: Colors.black,
    textTheme: GoogleFonts.nunitoSansTextTheme().apply(
      bodyColor: Color.fromARGB(255, 239, 240, 241),
      displayColor: Color.fromARGB(255, 255, 255, 255),
    ),
    brightness: Brightness.dark,
  );
}

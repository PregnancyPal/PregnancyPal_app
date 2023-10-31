import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData light = ThemeData(
    textTheme: GoogleFonts.nunitoSansTextTheme().apply(
      bodyColor: const Color(0xff0E1012),
      displayColor: const Color(0xff0E1012),
    ),
    brightness: Brightness.light);

ThemeData dark = ThemeData(
    textTheme: GoogleFonts.nunitoSansTextTheme().apply(
      bodyColor: Color.fromARGB(255, 239, 240, 241),
      displayColor: Color.fromARGB(255, 255, 255, 255),
    ),
    brightness: Brightness.dark);

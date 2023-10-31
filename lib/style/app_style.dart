import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  // App Images ..
  static const String dark = "assets/images/dark.png";
  static const String light = "assets/images/light.png";
  static const String system = "assets/images/system.png";
  static const String image1 = "assets/images/image1.png";
  static const String baby = "assets/images/baby.png";

  /// App Icons.

  static const String filtterIcon = "assets/icons/adjust-horizontal-alt.svg";
  static const String searchIcon = "assets/icons/search.svg";

  // Bottom Bar icons
  static const String homeIcon = "assets/icons/home.svg";
  static const String eventIcon = "assets/icons/event_note.svg";
  static const String reportIcon = "assets/icons/report.svg";
  static const String notificationsIcon = "assets/icons/notifications.svg";
// home Bar icons
  static const String firstIcon = "assets/icons/noun-corona.svg";
  static const String secondIcon = "assets/icons/noun-medical-test.svg";
  static const String thirdIcon = "assets/icons/noun-pill.svg";
  static const String forthIcon = "assets/icons/event_note.svg";

// App Colors

  static const primary = Color(0xff1C6BA4);
  static const button = Color.fromRGBO(244, 71, 8, 1);
  static const textColor = Color(0xffEEF6FC);
  static const Lbackground = Colors.white;
  static const Dbackground = Colors.black;

  static Color DPrimary = Color(0xFF0E4749);
  static Color DSecondary = Color(0xFF002626);
  static Color DTextPrimary = Color(0xFFEFE7DA);
  static Color DTextSecondary = Color(0xFFE55812);

  // App Theme Data..

  static ThemeData? theme = ThemeData(
    textTheme: GoogleFonts.nunitoSansTextTheme().apply(
      bodyColor: const Color(0xff0E1012),
      displayColor: const Color(0xff0E1012),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:pregnancypal/components/bottom_bar.dart';
import 'package:pregnancypal/style/app_style.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PregnancyPal',
      theme: AppStyle.theme,
      home: const BottomBar(), );
  }
}

import 'package:flutter/material.dart';
import 'package:pregnancypal/components/bottom_bar.dart';
import 'package:pregnancypal/provider/theme_provide.dart';
import 'package:pregnancypal/style/app_style.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider()..getTheme(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, provider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'PregnancyPal',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: provider.thememode,
          home: const BottomBar(),
        );
      },
    );
  }
}

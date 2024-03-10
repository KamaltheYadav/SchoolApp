// main.dart
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project1/src/screens/dashboard/dashboard.dart';
import 'package:project1/src/utils/screen_size.dart';
import 'package:project1/src/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void updateDarkMode(bool darkMode) {
    setState(() {
      isDarkMode = darkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    screenSize.init(context: context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: LightTheme,
      darkTheme: DarkTheme,
      home: Dashboard(),
    );
  }
}

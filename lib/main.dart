import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/data/notifiers.dart';
import 'package:flutter_lesson_1/views/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkmode = true;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkmodeNotifier,
      builder: (context, value, child) {
        return ValueListenableBuilder(
          valueListenable: colorThemeNotifier,
          builder: (context, value, child) {
            return MaterialApp(
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                  seedColor: colorThemeNotifier.value,
                  brightness: isDarkmodeNotifier.value
                      ? Brightness.dark
                      : Brightness.light,
                ),
                fontFamily: 'Pixelify',
              ),
              home: WelcomePage(),
            );
          },
        );
      },
    );
  }
}

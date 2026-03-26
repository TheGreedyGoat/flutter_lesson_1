import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/matApp_scaffold_stateless.dart';
import 'package:flutter_lesson_1/views/widget_tree.dart';

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
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: isDarkmode ? Brightness.dark : Brightness.light,
        ),
      ),
      home: WidgetTree(),
    );
  }
}

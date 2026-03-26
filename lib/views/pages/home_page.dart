import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/data/notifiers.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ValueListenableBuilder(
        valueListenable: counterNotifier,
        builder: (context, counter, child) {
          return Text(
            counter.toString(),
            style: TextStyle(fontSize: 10.0 + max(counter.abs().toDouble(), 1)),
          );
        },
      ),
    );
  }
}

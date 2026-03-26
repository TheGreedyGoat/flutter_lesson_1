import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/data/notifiers.dart';

class FloatingButtonsWidget extends StatefulWidget {
  const FloatingButtonsWidget({super.key});

  @override
  State<FloatingButtonsWidget> createState() => _FloatingButtonsWidgetState();
}

class _FloatingButtonsWidgetState extends State<FloatingButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            counterNotifier.value++;
          },
        ),
        SizedBox(height: 10.0),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            counterNotifier.value--;
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/data/notifiers.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isDarkmodeNotifier.value,
      onChanged: (bool value) {
        setState(() {
          isDarkmodeNotifier.value = value;
        });
      },
    );
  }
}

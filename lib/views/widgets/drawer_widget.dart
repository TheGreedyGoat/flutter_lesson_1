import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/data/notifiers.dart';
import 'package:flutter_lesson_1/views/widgets/color_scheme_widget.dart';
import 'package:flutter_lesson_1/views/widgets/switch_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                isDarkmodeNotifier.value = !isDarkmodeNotifier.value;
              },
              icon: ValueListenableBuilder(
                valueListenable: isDarkmodeNotifier,
                builder: (context, isDarkmode, child) {
                  return Icon(isDarkmode ? Icons.dark_mode : Icons.light_mode);
                },
              ),
            ),
            Text('Color Schemes:'),
            Expanded(child: ColorSchemeWidget()),
          ],
        ),
      ),
    );
  }
}

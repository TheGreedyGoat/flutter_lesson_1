import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/data/colors.dart';
import 'package:flutter_lesson_1/data/notifiers.dart';

class ColorSchemeWidget extends StatefulWidget {
  const ColorSchemeWidget({super.key});

  @override
  State<ColorSchemeWidget> createState() => _ColorSchemeWidgetState();
}

class _ColorSchemeWidgetState extends State<ColorSchemeWidget> {
  @override
  Widget build(BuildContext context) {
    List<ColorSelection> selections = List.empty(growable: true);
    for (Color color in colorToColorString.keys) {
      selections.add(ColorSelection(color: color));
    }
    return ListView(
      scrollDirection: Axis.vertical,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: selections,
    );
  }
}

class ColorSelection extends StatelessWidget {
  final Color color;
  const ColorSelection({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(Icons.square_rounded, color: color),
          Text(
            colorToColorString.containsKey(color)
                ? colorToColorString[color]!
                : 'ungültige Farbe',
          ),
        ],
      ),
      // tileColor: color,
      onTap: () {
        colorThemeNotifier.value = color;
      },
    );
  }
}

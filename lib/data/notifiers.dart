// ValueNotifier
// ValueListenableBuilder

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<int> counterNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkmodeNotifier = ValueNotifier(true);
ValueNotifier<Color> colorThemeNotifier = ValueNotifier(Colors.teal);

// ValueNotifier<ColorScheme> colorSchemeNotifier = ValueNotifier(
//   ColorScheme.fromSeed(
//     seedColor: Colors.tealAccent,
//     brightness: isDarkmodeNotifier.value ? Brightness.dark : Brightness.light,
//   ),
// );

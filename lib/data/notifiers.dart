// ValueNotifier
// ValueListenableBuilder

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);


// ValueListenableBuilder(
//       valueListenable: selectedPageNotifier,     //? Notifier
//       builder: (context, selectedPage, child) {  //? onChange callback
//       }
//     }
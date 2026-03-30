import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  final String username;
  const NavbarWidget({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    //==========VALUE LISTENABLE BUILDER================//

    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: username),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },
          selectedIndex: selectedPage, //? wich destination is selected
        );
      },
    );
  }
}

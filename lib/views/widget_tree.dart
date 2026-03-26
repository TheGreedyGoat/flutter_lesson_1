import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/data/notifiers.dart';
import 'package:flutter_lesson_1/views/widgets/drawer_widget.dart';
import 'package:flutter_lesson_1/views/widgets/floating_buttons_widget.dart';
import 'package:flutter_lesson_1/views/widgets/navbar_widget.dart';
import 'package:flutter_lesson_1/views/pages/home_page.dart';
import 'package:flutter_lesson_1/views/pages/profile_page.dart';

const List<Widget> pages = [HomePage(), ProfilePage()];
const List<String> pageTitles = ['Home', 'Profile'];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(pageTitles[selectedPage]),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: pages[selectedPage],
          bottomNavigationBar: NavbarWidget(),
          drawer: DrawerWidget(),

          floatingActionButton: selectedPage == 0
              ? FloatingButtonsWidget()
              : null,
        );
      },
    );
  }

  void onNavSelection(int index) {
    assert(
      index >= 0 && index < pages.length,
      '$index is not a valid page index!',
    );
  }
}

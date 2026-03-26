import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/data/notifiers.dart';
import 'package:flutter_lesson_1/views/widgets/navbar_widget.dart';
import 'package:flutter_lesson_1/views/pages/home_page.dart';
import 'package:flutter_lesson_1/views/pages/profile_page.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('My App'))),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages[selectedPage];
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }

  void onNavSelection(int index) {
    assert(
      index >= 0 && index < pages.length,
      '$index is not a valid page index!',
    );
  }
}

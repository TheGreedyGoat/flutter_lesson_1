import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/data/notifiers.dart';
import 'package:flutter_lesson_1/views/pages/profile_page.dart';
import 'package:flutter_lesson_1/views/widgets/drawer_widget.dart';
import 'package:flutter_lesson_1/views/widgets/floating_buttons_widget.dart';
import 'package:flutter_lesson_1/views/widgets/navbar_widget.dart';
import 'package:flutter_lesson_1/views/pages/home_page.dart';
import 'package:flutter_lesson_1/views/pages/cheat_sheet.dart';

const List<Widget> pages = [HomePage(), ProfilePage()];
const List<String> pageTitles = ['Home', 'Profile of '];

class WidgetTree extends StatelessWidget {
  final String username;
  const WidgetTree({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              pageTitles[selectedPage] + (selectedPage == 1 ? username : ''),
            ),
            automaticallyImplyLeading: false,
            actions: [
              //? switch to another page
              IconButton(
                onPressed: () {
                  Navigator.push(
                    //! pushReplacement: removes former page
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CheatSheet(title: 'Cheat Sheet');
                      },
                    ),
                  );
                },
                icon: Icon(Icons.business_center_outlined),
              ),
            ],
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: pages[selectedPage],
          bottomNavigationBar: NavbarWidget(username: username),
          drawer: DrawerWidget(),

          floatingActionButton: selectedPage == 0
              ? FloatingButtonsWidget()
              : null,
        );
      },
    );
  }
}

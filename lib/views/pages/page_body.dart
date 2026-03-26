import 'package:flutter/material.dart';

import 'package:flutter_lesson_1/views/pages/home_page.dart';
import 'package:flutter_lesson_1/views/pages/profile_page.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class PageBody extends StatefulWidget {
  const PageBody({super.key});
  @override
  State<PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return pages[currentIndex];
  }
}

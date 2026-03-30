import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/views/pages/welcome_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('logged out successfully')));
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return WelcomePage();
                },
              ),
            );
          },
          child: ListTile(
            leading: Icon(Icons.logout),
            tileColor: Theme.of(context).colorScheme.onSecondary,
            title: Text('logout'),
          ),
        ),
      ],
    );
  }
}

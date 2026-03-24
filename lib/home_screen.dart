import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Center(
          child: Text(
            'Gimme Paleberree!',
            style: TextStyle(color: Colors.white),
          ),
        ),
        leading: Icon(Icons.notification_add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              SizedBox(child: Center(child: Text('players.roll(initiative);'))),
              ListTile(
                tileColor: Colors.deepPurpleAccent,
                title: Text('FIREBALL!'),
              ),
            ],
          ),
        ),
      ),
      // body
    );
  }
}

//!
//?
/**
 * Stack: Widgets übereinander
 * Sized Box: NUR w & h
 * ListTile:
 */

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
            'Roll Initiative!',
            style: TextStyle(color: Colors.white),
          ),
        ),
        leading: Icon(Icons.catching_pokemon),
      ),
      body: Wrap(
        children: [
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
          Text('FIREBALL!'),
        ],
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
 *  trailing: am Ende
 * Wrap: wrap content around
 */

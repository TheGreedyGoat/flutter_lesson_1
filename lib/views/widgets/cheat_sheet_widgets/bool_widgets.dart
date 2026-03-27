import 'package:flutter/material.dart';

class BoolWidgets extends StatefulWidget {
  const BoolWidgets({super.key});

  @override
  State<BoolWidgets> createState() => _BoolWidgetsState();
}

class _BoolWidgetsState extends State<BoolWidgets> {
  bool? boxListTileCheck = false;
  bool? boxCheck = false;
  bool? boxCheckTri = false;
  bool isSwitched = false;
  bool isSwitchedList = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Boolean Widgets:',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Text('Checkbox'),
            Checkbox(
              value: boxCheck,
              onChanged: (bool? value) {
                setState(() {
                  boxCheck = value;
                });
              },
            ),
          ],
        ),
        Row(
          children: [
            Text('Checkbox tristate'),
            Checkbox(
              tristate: true,
              value: boxCheckTri,
              onChanged: (bool? value) {
                setState(() {
                  boxCheckTri = value;
                });
              },
            ),
          ],
        ),
        //=============CHECK BOX LIST TILE===================//
        SizedBox(
          //? kann das 'hasSize'-Problem lösen
          child: CheckboxListTile(
            title: Text('CheckboxListTile'),
            value: boxListTileCheck,
            onChanged: (bool? value) {
              setState(() {
                boxListTileCheck = value;
                print(value);
              });
            },
          ),
        ),
        Row(
          children: [
            Text('Switch'),
            Switch(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ],
        ),
        //=============SWITCH LIST TILE===================//
        SwitchListTile.adaptive(
          //? adaptive: use OS- style
          title: Text('SwitchListTile'),
          value: isSwitchedList,
          onChanged: (bool value) {
            setState(() {
              isSwitchedList = value;
            });
          },
        ),
      ],
    );
  }
}

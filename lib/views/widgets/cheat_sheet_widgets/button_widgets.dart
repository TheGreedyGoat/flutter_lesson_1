import 'package:flutter/material.dart';

class ButtonWidgets extends StatefulWidget {
  const ButtonWidgets({super.key});

  @override
  State<ButtonWidgets> createState() => _ButtonWidgetsState();
}

class _ButtonWidgetsState extends State<ButtonWidgets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Button Widgets:',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        GestureDetector(
          //? makes any widget interactive
          onTap: () {},
          child: Container(
            height: 50,
            width: double.infinity,
            color: Theme.of(context).colorScheme.onPrimary,
            child: Text('GestureDetector'),
          ),
        ),
        SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: InkWell(
            //? clickable with splash effect
            splashColor: Theme.of(context).colorScheme.primary,
            onTap: () {},
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.black12, //Theme.of(context).colorScheme.onPrimary,
              child: Text('InkWell'),
            ),
          ),
        ),
        //==============BUTTON TYPES=============//
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
          child: Text('Elevated Button styled'),
        ),
        ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
        FilledButton(onPressed: () {}, child: Text('Filled Button')),
        TextButton(onPressed: () {}, child: Text('Text Button')),
        OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
        Row(children: [CloseButton(), Text('Close Button')]),
        Row(children: [BackButton(), Text('Back Button')]),
      ],
    );
  }
}

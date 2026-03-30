import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('SnackBars', style: TextStyle(fontSize: 20)),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: Duration(seconds: 5),
                content: Column(
                  children: [
                    Text('Default SnackBar'),
                    Text(
                      'ScaffoldMessenger.of(context,).showSnackBar(SnackBar(content: ... )',
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text('Open Default SnackBar'),
        ),
        FilledButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                duration: Duration(seconds: 5),
                content: Column(
                  children: [
                    Text('Floating SnackBar'),
                    Text(
                      'ScaffoldMessenger.of(context,).showSnackBar(SnackBar(content: ... )',
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text('Open Floating SnackBar'),
        ),
      ],
    );
  }
}

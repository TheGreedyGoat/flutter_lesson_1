import 'package:flutter/material.dart';

class CheatSheet extends StatefulWidget {
  const CheatSheet({super.key, required this.title});

  final String title;
  @override
  State<CheatSheet> createState() => _CheatSheetState();
}

class _CheatSheetState extends State<CheatSheet> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'i1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Drop Down Button'),
              //=============DROPDOWN BUTTON======================//
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(
                    value: 'i1',
                    child: Text('DropdownMenuItem 1'),
                  ),
                  DropdownMenuItem(
                    value: 'i2',
                    child: Text('DropdownMenuItem 2'),
                  ),
                  DropdownMenuItem(
                    value: 'i3',
                    child: Text('DropdownMenuItem 3'),
                  ),
                  DropdownMenuItem(
                    value: 'i4',
                    child: Text('DropdownMenuItem 4'),
                  ),
                  DropdownMenuItem(
                    value: 'i5',
                    child: Text('DropdownMenuItem 5'),
                  ),
                  DropdownMenuItem(
                    value: 'i6',
                    child: Text('DropdownMenuItem 6'),
                  ),
                ],
                onChanged: (String? item) {
                  setState(() {
                    menuItem = item;
                  });
                },
              ),
              //=============TEXT FIELD(INPUT)===================//
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                ),
                onEditingComplete: () => setState(() {}),
              ),
              Text(
                isChecked != null && isChecked! ? controller.text : "GEHEIM!",
              ),
              //=============CHECK BOX LIST TILE===================//
              CheckboxListTile(
                tristate: true,
                title: Text('CheckboxListTile'),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                    print(value);
                  });
                },
              ),

              //=============SWITCH LIST TILE===================//
              SwitchListTile.adaptive(
                //? adaptive: use OS- style
                title: Text('SwitchListTile'),
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Text('Slider'),
              Slider(
                max: 10.0,
                divisions: 10,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                  // print(value);
                },
              ),

              //=============GESTURE DETECTOR===================//
              GestureDetector(
                //? makes any widget interactive
                onTap: () {
                  print('image tapped');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Theme.of(context).colorScheme.onPrimary,
                  child: Text('GestureDetector'),
                ),
              ),
              SizedBox(height: 8.0),
              InkWell(
                //? clickable with splash effect
                splashColor: Theme.of(context).colorScheme.primary,
                onTap: () {
                  print('image tapped');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color:
                      Colors.black12, //Theme.of(context).colorScheme.onPrimary,
                  child: Text('InkWell'),
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
          ),
        ),
      ),
    );
  }
}

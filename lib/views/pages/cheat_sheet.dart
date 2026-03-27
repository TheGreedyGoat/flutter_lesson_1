import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/views/widgets/cheat_sheet_widgets/bool_widgets.dart';
import 'package:flutter_lesson_1/views/widgets/cheat_sheet_widgets/button_widgets.dart';

class CheatSheet extends StatefulWidget {
  const CheatSheet({super.key, required this.title});

  final String title;
  @override
  State<CheatSheet> createState() => _CheatSheetState();
}

class _CheatSheetState extends State<CheatSheet> {
  TextEditingController controller = TextEditingController();
  String textfieldInput = 'none yet';

  double sliderValue = 0.0;
  double sliderValueDivided = 0.0;
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
                  hint: Text(
                    'InputDecoration(hint: ... )',
                    style: TextStyle(color: Theme.of(context).hintColor),
                  ), //?placeholder text
                ),
                onEditingComplete: () => setState(() {
                  textfieldInput = controller.text;
                  FocusManager.instance.primaryFocus?.unfocus();
                  //? unfocuses the Teextfield and hides keyboard
                  controller.clear();
                }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('last submitted input: $textfieldInput'),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BoolWidgets(),
                ),
              ),
              Text('Slider: $sliderValue'),
              Slider(
                max: 10.0,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                  // print(value);
                },
              ),
              Text('Slider (divisions): $sliderValueDivided'),
              Slider(
                max: 10.0,
                divisions: 10,
                value: sliderValueDivided,
                onChanged: (double value) {
                  setState(() {
                    sliderValueDivided = value;
                  });
                  // print(value);
                },
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ButtonWidgets(),
                ),
              ),

              //=============GESTURE DETECTOR===================//
            ],
          ),
        ),
      ),
    );
  }
}

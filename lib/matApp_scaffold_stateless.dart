import 'package:flutter/material.dart';

void myMain() {
  runApp(const MyStatefulApp());
}

class MyStatefulApp extends StatefulWidget {
  const MyStatefulApp({super.key});

  @override
  State<MyStatefulApp> createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp> {
  int currentIndex = 0;
  int counter = 0;
  bool darkMode = true;
  var destTexts = ['Home:', 'Profile:'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //=======THEME=========//
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: darkMode ? Brightness.dark : Brightness.light,
        ),
      ),
      home: Scaffold(
        //=======APPBAR=========//
        appBar: AppBar(
          title: Text(destTexts[currentIndex]),
          centerTitle: true,
          leading: TextButton.icon(
            label: Icon(Icons.brightness_6_rounded),
            onPressed: () {
              setState(() {
                darkMode = !darkMode;
              });
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.login),
            ),
          ],
          backgroundColor: Colors.teal,
        ),
        body: getContent(),
        //=============DRAWER================//
        drawer: SafeArea(
          //? Widget does not extend over the phone's top bar
          child: Drawer(
            child: Column(children: [ListTile(title: Text('Logout'))]),
          ),
        ),
        //=======Floating Action Button=========//
        floatingActionButton: currentIndex == 0
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      print('add');
                      setState(() {
                        counter++;
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                  SizedBox(height: 8.0),
                  FloatingActionButton(
                    onPressed: () {
                      print('substract');
                      setState(() {
                        counter--;
                      });
                    },
                    child: Icon(Icons.remove),
                  ),
                ],
              )
            : null,
        //=======NAVIGATION BAR=========//
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int value) {
            print(value);
            //===========SET STATE================//
            setState(() {
              currentIndex = value;
            });
          },
          selectedIndex: currentIndex, //? wich destination is selected
        ),
      ),
    );
  }

  Widget getContent() {
    switch (currentIndex) {
      case 0:
        return Center(
          child: Text(counter.toString(), style: TextStyle(fontSize: 50.0)),
        );
      case 1:
        return Center(
          child: Text('Your Profile...', style: TextStyle(fontSize: 50.0)),
        );
      default:
        return Text('404');
    }
  }
}

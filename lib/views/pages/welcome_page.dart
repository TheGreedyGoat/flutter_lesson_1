import 'package:flutter/material.dart';
import 'package:flutter_lesson_1/views/widget_tree.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController controller = TextEditingController();

  bool showNoUsernameMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome.', style: TextStyle(fontSize: 30)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: controller,

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  ),
                  hint: Text(
                    'Enter your username...',
                    style: TextStyle(color: Theme.of(context).hintColor),
                  ), //?placeholder text
                ),
              ),
            ),
            showNoUsernameMessage
                ? Text(
                    'username is required',
                    style: TextStyle(color: Colors.red),
                  )
                : SizedBox.shrink(),
            ElevatedButton(
              onPressed: () {
                if (false && controller.text == '') {
                  setState(() {
                    showNoUsernameMessage = true;
                  });
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WidgetTree(username: controller.text);
                      },
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

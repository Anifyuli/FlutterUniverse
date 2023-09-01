import 'package:flutter/material.dart';
import 'package:transform_exercise/colorful_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Colorful Button - Transform")),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButton(Colors.pink, Colors.blue, Icons.person),
              ColorfulButton(Colors.yellow, Colors.amber, Icons.person_2),
              ColorfulButton(Colors.orange, Colors.deepPurple, Icons.people_alt),
              ColorfulButton(Colors.lime, Colors.red, Icons.computer)
            ],
          )
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Style Practice'),
        ),
        body: const Center(
          child: Text('This is text',
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontStyle: FontStyle.italic,
                  fontSize: 36,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.cyan,
                  decorationThickness: 1,
                  decorationStyle: TextDecorationStyle.wavy,
                  )),
        ),
      ),
    );
  }
}

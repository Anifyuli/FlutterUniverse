import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World!'),
        ),
        body: Center(
          child: Container(
            color: Colors.lightBlue,
            width: 150,
            height: 50,
            child: const Text(
              'I am learning Flutter now. Get spirit!', textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w200,
              ),
              ),
            )
            ),
      ),
    );
  }
}

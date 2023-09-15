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
          title: const Text('Container Practice'),
          backgroundColor: Colors.orangeAccent,
          ),
          body: Container(
            color: Colors.amber[300],
            margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
            padding: const EdgeInsets.only(bottom: 20, top: 20),
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: <Color>[
                    Colors.red,
                    Colors.deepOrange,
                ]),
              )
            ),
          )
        ),
      );
  }
}

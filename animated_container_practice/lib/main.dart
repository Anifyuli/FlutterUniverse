import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Animated Container Practice")),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                
              });
            },
            child: AnimatedContainer(
              color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),
              duration: const Duration(seconds : 1),
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}

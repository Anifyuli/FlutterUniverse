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
        leading: const Icon(Icons.android, color: Colors.white),
        title: const Text("AppBar Exercise",
            style: TextStyle(
              color: Colors.white,
            )),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app))
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF15aaff), Color(0xFFadf7f2)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
              image: DecorationImage(
                  image: AssetImage("assets/appBar_pattern.png"),
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.repeat)),
        ),
      ),
    ));
  }
}

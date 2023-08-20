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
          title: const Text("Spacer Exercise"),
        ),
        body: Center(
          child: Row(
            children: [
              const Spacer(flex: 1,),
              Container(width: 80, height: 80, color: Colors.red),
              const Spacer(flex: 1,),
              Container(width: 80, height: 80, color: Colors.yellow),
              const Spacer(flex: 1,),
              Container(width: 80, height: 80, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}

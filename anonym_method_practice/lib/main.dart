import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String message = 'This is Text';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Anonymous Method Practice'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              ElevatedButton(
                  onPressed: () {
                    // Penerapan anonymous method yaitu dengan menggunakan () {method body}
                    setState(() {
                      message = 'Button pressed';
                    });
                  },
                  child: const Text('Click me!')),
            ],
          ),
        ),
      ),
    );
  }
}

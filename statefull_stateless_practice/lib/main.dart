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
  int num = 0;

  // Fungsi untuk mengatur reaksi ketika tombol ditekan/klik
  void clickButton() {
    // Fungsi untuk mengubah status dari StatefullWidget
    setState(() {
      num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Statefull/Stateless Practice'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(num.toString(), style: TextStyle(fontSize: 10 + num.toDouble())),
              ElevatedButton(
                onPressed: clickButton,
                child: const Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

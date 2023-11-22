import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = false;

  Widget animatedRect({Color? fillColor, Color? strokeColor}) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        color: fillColor,
        border: Border.all(color: strokeColor ?? Colors.transparent, width: 2),
      ),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Animated Switcher')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                duration: const Duration(seconds: 2),
                child: animatedRect(
                  fillColor: isOn ? Colors.green : Colors.red,
                  strokeColor: isOn ? Colors.green[700]! : Colors.red[700]!,
                ),
              ),
              Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red[100],
                value: isOn,
                onChanged: (newValue) {
                  setState(() {
                    isOn = newValue;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

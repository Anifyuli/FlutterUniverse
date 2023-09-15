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
          title: const Text('Row & Column Practice'),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Text 1'),
            Text('Text 2'),
            Text('Text 3'),
            Row(
              children: [
                Text('Text 4'),
                Text('Text 5'),
                Text('Text 6'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

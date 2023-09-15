import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'Scanning result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qr Code Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final result = await scanner.scan();
                setState(() {
                  text = result ?? 'Scanning result';
                });
              },
              child: const Text('Scan'),
            ),
          ],
        ),
      ),
    );
  }
}

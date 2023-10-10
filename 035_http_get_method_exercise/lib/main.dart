import 'package:flutter/material.dart';
import 'dart:math';
import 'api_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late User user = User(id: '', name: '');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GET HTTP method exercise')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text((user != '')
                  ? "${user.id} | ${user.name}"
                  : "Data not found"),
              ElevatedButton(
                  onPressed: () {
                    User.apiConnection('4').then((value) => user = value);
                    setState(() {});
                  },
                  child: const Text('GET'))
            ],
          ),
        ),
      ),
    );
  }
}

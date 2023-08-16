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
        title: const Text('Flexible Widget'),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      child: Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.red,
                  )),
                  Flexible(
                      child: Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.blue,
                  )),
                  Flexible(
                      child: Container(
                    margin: const EdgeInsets.all(5),
                    color: Colors.green,
                  ))
                ],
              )),
          Flexible(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.all(5),
              color: Colors.yellow,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(5),
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    ));
  }
}

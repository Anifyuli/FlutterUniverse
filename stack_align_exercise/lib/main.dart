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
        appBar: AppBar(title: const Text("Stack & Align Exercise")),
        body: Stack(
          children: [
            // Background section
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            child: Container(
                          color: Colors.white,
                        )),
                        Flexible(
                            child: Container(
                          color: Colors.black12,
                        )),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            child: Container(
                          color: Colors.black12,
                        )),
                        Flexible(
                            child: Container(
                          color: Colors.white,
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // ListView section
            ListView(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "This text is in middle layer of Stack widget",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "This text is in middle layer of Stack widget",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "This text is in middle layer of Stack widget",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "This text is in middle layer of Stack widget",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "This text is in middle layer of Stack widget",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "This text is in middle layer of Stack widget",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "This text is in middle layer of Stack widget",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "This text is in middle layer of Stack widget",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "This text is in middle layer of Stack widget",
                    style: TextStyle(fontSize: 32),
                  ),
                ),
              ],
            ),
            Align(
              alignment: const Alignment(0, 0.9),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {},
                child: const Text("My Button"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

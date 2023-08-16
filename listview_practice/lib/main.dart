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
  List<Widget> myWidget = [];
  int counter = 1;

  // _MainAppState() {
  //   for (int i = 0; i < 15; i++) {
  //     myWidget.add(Container(
  //       margin: const EdgeInsets.all(10),
  //       padding: const EdgeInsets.all(10),
  //       child: Text(
  //         'This is data -$i',
  //         style: const TextStyle(
  //           fontSize: 24,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('ListView Practice'),
            ),
            body: Center(
                child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      child: const Text('Add'),
                      onPressed: () {
                        setState(() {
                          myWidget.add(Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'This is data : $counter',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ));
                          counter++;
                        });
                      },
                    ),
                    ElevatedButton(
                      child: const Text('Remove'),
                      onPressed: () {
                        setState(() {
                          myWidget.removeLast();
                          counter--;
                        });
                      },
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: myWidget,
                ),
              ],
            ))));
  }
}

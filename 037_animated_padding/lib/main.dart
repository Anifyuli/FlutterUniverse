import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double myPadding = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Animated Padding')),
        body: Center(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: const Duration(seconds: 1),
                          padding: EdgeInsets.all(myPadding),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                myPadding = 20;
                              });
                            },
                            child: Container(
                              color: Colors.red,
                            ),
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: const Duration(seconds: 1),
                          padding: EdgeInsets.all(myPadding),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                myPadding = 20;
                              });
                            },
                            child: Container(
                              color: Colors.green,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: const Duration(seconds: 1),
                          padding: EdgeInsets.all(myPadding),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                myPadding = 20;
                              });
                            },
                            child: Container(
                              color: Colors.blue,
                            ),
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: const Duration(seconds: 1),
                          padding: EdgeInsets.all(myPadding),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                myPadding = 20;
                              });
                            },
                            child: Container(
                              color: Colors.yellow,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

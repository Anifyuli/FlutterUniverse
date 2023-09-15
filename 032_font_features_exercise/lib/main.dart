import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Font Features'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Text 1 original',
                    style: TextStyle(
                      fontSize: 30,
                    )),
                const Text('Text 1 (smcp)',
                    style: TextStyle(
                        fontSize: 30,
                        fontFeatures: [FontFeature.enable('smcp')])),
                const Text('Text 1 1/2 (smcp & frac)',
                    style: TextStyle(fontSize: 30, fontFeatures: [
                      FontFeature.enable('smcp'),
                      FontFeature.enable('frac')
                    ])),
                const Text('Milonga 1 1/2 (smcp & frac)',
                    style: TextStyle(
                        fontFamily: 'Milonga',
                        fontSize: 30,
                        fontFeatures: [
                          FontFeature.enable('smcp'),
                          FontFeature.enable('frac')
                        ])),
                const Text('Cardo 19',
                    style: TextStyle(fontFamily: 'Cardo', fontSize: 30)),
                const Text('Cardo 19 : oldstyleFigures',
                    style: TextStyle(
                        fontFamily: 'Cardo',
                        fontSize: 30,
                        fontFeatures: [FontFeature.oldstyleFigures()])),
                const Text('Gabriola',
                    style: TextStyle(fontFamily: 'Gabriola', fontSize: 30)),
                Text('Gabriola : stylisticSet(5)',
                    style: TextStyle(
                        fontFamily: 'Gabriola',
                        fontSize: 30,
                        fontFeatures: [FontFeature.stylisticSet(5)])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

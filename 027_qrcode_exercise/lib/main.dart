import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImageView(
            version: 10,
            backgroundColor: Colors.yellow,
            eyeStyle: const QrEyeStyle(
              color: Colors.black
            ),
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: const EdgeInsets.all(20),
            size: 300,
            data: "https://gitlab.com/Anifyuli",
          ),
        ),
      ),
    );
  }
}

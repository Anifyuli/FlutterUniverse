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
          title: const Text("Image Widget Practice"),
        ),
        body: Center(
          child: Container(
            color: Colors.black87,
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(3),
            child: const Image(
              // Cara menggunakan gambar dari CDN seperti pada kode yang dikomentari
              // image: NetworkImage("https://merges.ubuntu.com/.img/ubuntulogo-100.png"),
              image: AssetImage("images/Ubuntu-logo-2022.svg"),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}

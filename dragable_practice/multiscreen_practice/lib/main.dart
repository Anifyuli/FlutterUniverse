import 'package:flutter/material.dart';
// Impor file yang berisi widget terpisah
import 'package:multiscreen_practice/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Cara memanggil widget custom di file yang terpisah
      home: LoginPage(),
    );
  }
}

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
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.check),
          title: const Text("TextField Exercise"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                child: TextField(
                  // obscureText berfungsi untuk menyamarkan teks input
                  // obscureText: true,
                  // maxLength dipakai untuk membatasi jumlah maksimal panjang karakter pada kolom input
                  // maxLines digunakan untuk membatasi batas maksimal karakter pada kolom input
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: textController,
                ),
              ),
              Text(textController.text)
            ],
          ),
        ),
      ),
    );
  }
}

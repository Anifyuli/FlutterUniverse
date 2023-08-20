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
          title: const Text("TextField Decoration Exercise"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                child: TextField(
                  decoration: InputDecoration(
                    // fillColor harus menggunakan filled: true agar fillColor dapat diterapkan langsung ke TextField
                    fillColor: Colors.black12,
                    filled: true,
                    icon: const Icon(Icons.edit),
                    /* Catatan
                    prefix dapat berupa widget apapun, jika menggunakan prefix, maka kita tidak dapat menggunakan prefixText dan prefixStyle. Hal ini berlaku juga ke suffix dengan suffixText dan suffixStyle
                    */
                    prefixIcon: const Icon(Icons.abc),
                    prefixText: "Input here! ",
                    prefixStyle: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    ),
                    labelText: "TextInput",
                    labelStyle: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w900,
                    ),
                    hintText: "Insert your text here",
                    hintStyle: const TextStyle(
                      color: Colors.purple,
                      fontSize: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    suffixIcon: const Icon(Icons.arrow_back),
                  ),
                  maxLength: 10,
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

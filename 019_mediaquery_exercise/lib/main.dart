import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaQuery Exercise"),
      ),
      // Gunakan MediaQuery yang dikombinasikan dengan ternary conditional syntax untuk mengubah orientasi Widget
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(children: buildContainer())
          : Row(children: buildContainer()),
    );
  }

  List<Widget> buildContainer() {
    return <Widget>[
      Container(color: Colors.red, height: 100, width: 100),
      Container(color: Colors.green, height: 100, width: 100),
      Container(color: Colors.blue, height: 100, width: 100),
    ];
  }
}

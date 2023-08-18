import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("2nd Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // Navigator.pop digunakan untuk mengangkat page sebelumnya dan menghilangkan page aktif dari Stack
              Navigator.pop(context);
            },
            child: const Text("Back to main page")),
      ),
    );
  }
}

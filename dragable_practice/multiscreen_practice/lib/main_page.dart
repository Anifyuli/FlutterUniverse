import 'package:flutter/material.dart';
import 'package:multiscreen_practice/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // Navigator.push dipakai untuk menimpa page sebelumnya dengan page baru tanpa mengganti page yang sebelumnya
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SecondPage();
              }));
            },
            child: const Text("Go to 2nd page")),
      ),
    );
  }
}

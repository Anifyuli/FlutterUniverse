import 'package:flutter/material.dart';
import 'package:multiscreen_practice/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacement digunakan untuk mengganti page yang aktif ke page yang di routing
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const MainPage();
              }));
            },
            child: const Text("Login")),
      ),
    );
  }
}

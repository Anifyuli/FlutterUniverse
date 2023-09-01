import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("ShaderMask Exercise")),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return const LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(
                  Rect.fromLTRB(0, 0, rectangle.width, rectangle.height)
              );
            },
            blendMode: BlendMode.dstIn,
            child: const Image(
                width: 300,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1607836046730-3317bd58a31b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80")),
          ),
        ),
      ),
    );
  }
}

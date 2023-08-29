import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TabBar Exercise"),
            bottom: const TabBar(
              tabs: [
                Tab(text: "Home"),
                Tab(icon: Icon(Icons.newspaper), text: "News"),
                Tab(icon: Icon(Icons.notifications)),
                Tab(child: Image(image: AssetImage("assets/user.png"))),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text("Tab 1")),
              Center(child: Text("Tab 2")),
              Center(child: Text("Tab 3")),
              Center(child: Text("Tab 4")),
            ],
          ),
        ),
      ),
    );
  }
}

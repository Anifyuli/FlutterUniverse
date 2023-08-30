import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = const TabBar(
      indicator: BoxDecoration(
        color: Colors.purple,
        border: Border(top: BorderSide(color: Colors.green, width: 5))
      ),
      tabs: [
        Tab(icon: Icon(Icons.home), text: "Home"),
        Tab(
          icon: Icon(Icons.notifications),
          text: "Notifications",
        ),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Custom TabBar Exercise"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(color: Colors.amber, child: myTabBar)),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text("Tab 1")),
              Center(child: Text("Tab 2")),
            ],
          ),
        ),
      ),
    );
  }
}

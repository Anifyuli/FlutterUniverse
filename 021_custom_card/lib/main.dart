import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        title: const Text(
          "Custom Card Exercise",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF2e7d32),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF00e676), Color(0xFF69f0ae)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://img.freepik.com/free-vector/white-cubes-pattern_1053-248.jpg?w=740&t=st=1692974790~exp=1692975390~hmac=7702fd84b393ac79f981196ea4a3c607493d61276be382058767dadc16d6d834"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://linuxmint.com/web/img/devices.png"),
                            fit: BoxFit.contain,
                            alignment: Alignment.topCenter),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: [
                            const Text(
                              "Linux Mint 21.2 Victoria",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.green, fontSize: 24),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20, bottom: 15),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Posted : ",
                                    style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    "July 16th, 2023",
                                    style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            const Row(
                              children: [
                                Spacer(flex: 10),
                                Icon(Icons.thumb_up, size: 18, color: Colors.grey,),
                                Spacer(flex: 1),
                                Text("99", style: TextStyle(color: Colors.grey)),
                                Spacer(flex: 5),
                                Icon(Icons.comment, size: 18, color: Colors.grey,),
                                Spacer(flex: 1),
                                Text("9", style: TextStyle(color: Colors.grey)),
                                Spacer(flex: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

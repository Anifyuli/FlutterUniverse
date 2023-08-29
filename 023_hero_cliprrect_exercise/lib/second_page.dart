import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        title: const Text("Hero ClipRRect Exercise",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Hero(
          tag: 'Ubuntu',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.2,
              child: const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://news.itsfoss.com/content/images/size/w1304/wordpress/2022/03/ubuntu-unveils-new-logo.png")),
            ),
          ),
        ),
      ),
    );
  }
}

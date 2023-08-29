import 'package:flutter/material.dart';
import 'package:hero_cliprrect_exercise/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: const Text("Hero ClipRRect Exercise",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SecondPage();
            }));
          },
          child: Hero(
            /*
            Catatan :
            Penggunaan tag pada widget Hero harus sama antara sasaran animasi dan induk dari sasaran tersebut
            */
            tag: 'Ubuntu',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.1,
                child: const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://news.itsfoss.com/content/images/size/w1304/wordpress/2022/03/ubuntu-unveils-new-logo.png")),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AudioPlayer audioPlayer;
  Duration audioDuration = const Duration(hours: 0, minutes: 0, seconds: 0);

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onDurationChanged.listen((duration) {
      setState(() {
        audioDuration = duration;
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.loop);
  }

  void playSound(String url) async {
    await audioPlayer.play(UrlSource(url));
  }

  void pauseSound(String url) async {
    await audioPlayer.pause();
  }

  void stopSound(String url) async {
    await audioPlayer.stop();
  }

  void nextSound(String url) async {
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('Audioplayer Exercise')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(audioDuration.toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 32)),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        playSound(
                            "https://audio.jukehost.co.uk/J2wJYW1cR8fIFgzfHJ2NfWccZTsKvmAT");
                      },
                      icon: const Icon(Icons.play_circle, size: 64),
                      alignment: Alignment.center),
                  IconButton(
                      onPressed: () {
                        pauseSound(
                            "https://audio.jukehost.co.uk/J2wJYW1cR8fIFgzfHJ2NfWccZTsKvmAT");
                      },
                      icon: const Icon(Icons.pause_circle, size: 64),
                      alignment: Alignment.center),
                  IconButton(
                      onPressed: () {
                        stopSound(
                            "https://audio.jukehost.co.uk/J2wJYW1cR8fIFgzfHJ2NfWccZTsKvmAT");
                      },
                      icon: const Icon(Icons.stop_circle, size: 64),
                      alignment: Alignment.center),
                  IconButton(
                      onPressed: () {
                        nextSound(
                            "https://audio.jukehost.co.uk/J2wJYW1cR8fIFgzfHJ2NfWccZTsKvmAT");
                      },
                      icon: const Icon(Icons.navigate_next_rounded, size: 64),
                      alignment: Alignment.center)
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

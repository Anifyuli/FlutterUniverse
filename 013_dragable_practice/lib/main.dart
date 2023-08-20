import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // Warna ditampung dalam variabel baru
  Color color1 = Colors.amber;
  Color color2 = Colors.green;
  Color? targetColor;
  // Kondisi awal widget yang akan diterima
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Dragable Practice")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Draggable<Color>(
                    data: color1,
                    feedback: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color1.withOpacity(0.7),
                          shape: const StadiumBorder(),
                          elevation: 0,
                        )),
                    childWhenDragging: const SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                          elevation: 0,
                        )),
                    child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color1,
                          shape: const StadiumBorder(),
                          elevation: 3,
                        )),
                  ), // StadiumBorder untuk menciptakan lengkungan pada shape, elevation untuk menggeser posisi Material sehingga muncul shadow atau bayangan
                  Draggable<Color>(
                    data: color2,
                    feedback: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color2.withOpacity(0.7),
                          shape: const StadiumBorder(),
                          elevation: 0,
                        )),
                    childWhenDragging: const SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: Colors.black26,
                          shape: StadiumBorder(),
                          elevation: 0,
                        )),
                    child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color2,
                          shape: const StadiumBorder(),
                          elevation: 3,
                        )),
                  )
                ],
              ),
              DragTarget<Color>(
                builder: (context, candidates, rejected) {
                  return (isAccepted) ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                          shape: const StadiumBorder(),
                          elevation: 0,
                        )) : SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: color1.withOpacity(0.7),
                          shape: const StadiumBorder(),
                          elevation: 0,
                        ));
                },
                onWillAccept: (value) => true,
                onAccept: (value) {
                  isAccepted = true;
                  targetColor = value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

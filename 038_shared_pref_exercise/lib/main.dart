import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController myController = TextEditingController(text: 'N/A');
  bool isOn = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('text', myController.text);
    pref.setBool('isOn', isOn);
  }

  Future<String> getText() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('text') ?? 'N/A';
  }

  Future<bool> getOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('isOn') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shared Preferences Practice'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: myController,
              ),
              Switch(
                  value: isOn,
                  onChanged: (newValue) {
                    setState(() {
                      isOn = newValue;
                    });
                  }),
              ElevatedButton(
                  onPressed: () {
                    saveData();
                  },
                  child: const Text('Save')),
              ElevatedButton(
                  onPressed: () {
                    getText().then((s) {
                      myController.text = s;
                      setState(() {});
                    });
                    getOn().then((b) {
                      isOn = b;
                      setState(() {});
                    });
                  },
                  child: const Text('Load'))
            ],
          ),
        ),
      ),
    );
  }
}

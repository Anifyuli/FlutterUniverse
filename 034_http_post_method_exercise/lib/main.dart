import 'package:flutter/material.dart';
import 'package:http_get/api_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PostResult postResult = PostResult(id: '', name: '', job: '', createdAt: '');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('POST HTTP method exercise')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text((postResult != null)
                    ? "${postResult.id} | ${postResult.name} | ${postResult.job} | ${postResult.createdAt}"
                    : "Data not found"),
                ElevatedButton(
                    onPressed: () {
                      PostResult.apiConnect('Rudy', 'Policeman')
                          .then((value) => postResult = value);
                      setState(() {});
                    },
                    child: const Text('POST'))
              ],
            ),
          )),
    );
  }
}

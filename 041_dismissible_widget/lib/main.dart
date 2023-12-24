import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<String> items =
        List.generate(20, (index) => 'Item ${index + 1}');
    final Faker faker = Faker();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dismissible Widget"),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                direction: DismissDirection.endToStart,
                confirmDismiss: (DismissDirection direction) async {
                  return await showDialog<bool>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Menghapus Item"),
                          content: const Text(
                              "Apakah Anda ingin menghapus item yang dipilih?"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                                child: const Text("Iya, hapus")),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(false);
                                },
                                child: const Text("Tidak"))
                          ],
                        );
                      }).then((value) {
                    if (value == true) {
                      setState(() {
                        items.removeAt(index);
                      });
                    }
                    return value ?? false;
                  });
                },
                background: Container(
                    color: Colors.red,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.delete,
                            size: 28,
                            color: Colors.white,
                          )),
                    )),
                key: Key(index.toString()),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text((index + 1).toString()),
                  ),
                  title: Text(faker.person.name()),
                  subtitle: Text(faker.lorem.sentence()),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

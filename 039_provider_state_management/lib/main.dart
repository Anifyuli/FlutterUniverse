import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
              title: Consumer<ApplicationColor>(
                  builder: (context, appColor, _) => Text(
                        "Provider State Management",
                        style: TextStyle(color: appColor.appColor),
                      ))),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, appColor, _) => AnimatedContainer(
                    margin: const EdgeInsets.all(5),
                    duration: const Duration(seconds: 5),
                    width: 100,
                    height: 100,
                    color: appColor.appColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text("Amber")),
                    Consumer<ApplicationColor>(
                        builder: (context, appColor, _) => Switch(
                          activeColor: appColor.appColor,
                          inactiveThumbColor: appColor.appColor,
                            value: appColor.isLightBlue,
                            onChanged: (newValue) {
                              appColor.isLightBlue = newValue;
                            })),
                    Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text("Light blue"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

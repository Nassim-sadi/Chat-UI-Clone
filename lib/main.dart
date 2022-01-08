import 'package:flutter/material.dart';
import 'package:messenger_clone/data/myTheme.dart';
import 'package:messenger_clone/ui/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger Clone',
      themeMode: ThemeMode.system,
      darkTheme: myTheme.myDarkTheme,
      theme: myTheme.myLightTheme,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

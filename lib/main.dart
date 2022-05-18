import 'package:flutter/material.dart';
import 'package:ui_practice/pages/homepage.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI_Practice',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey),
      home: HomePage(),
    );
  }
}
// just a check 

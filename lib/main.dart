import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI_Practice',
      home: Scaffold(
        backgroundColor: Colors.amber,
      ),
    );
  }
}
// just a check 

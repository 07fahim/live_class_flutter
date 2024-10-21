import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
            alignment: Alignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.blue.shade100,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue.shade300,),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue.shade700,)
        ],
      )),
    );
  }
}

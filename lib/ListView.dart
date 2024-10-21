import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.lightBlue.shade100,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.lightBlue.shade300,
            ),Container(
              height: 1000,
              width: 200,
              color: Colors.lightBlue.shade700,
            ),
          ],
        ),
      ),
    );
  }
}

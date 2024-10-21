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
        body: GridView.builder(scrollDirection: Axis.vertical,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4),
          itemBuilder: (context, index) => Container(
            color: Colors.lightBlue,
            margin: EdgeInsets.all(2),
          ),
        ),
      ),
    );
  }
}

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
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                //height: 200,
                //width: 200,
                color: Colors.lightBlue.shade100,
              ),
            ),
            Expanded(
              child: Container(
                //height: 200,
                //width: 200,
                color: Colors.lightBlue.shade300,
              ),
            ),Expanded(
              child: Container(
                //height: 200,
                //width: 200,
                color: Colors.lightBlue.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

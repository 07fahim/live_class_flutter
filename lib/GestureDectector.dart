import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void userTap(){
    print("User Tap");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
            child: GestureDetector(
              onDoubleTap: userTap,
              child: Container(
                      height: 300,
                      width: 300,
                      color: Colors.blue.shade100,child: Text("Tap"),alignment: Alignment.center,
                    ),
            ),
          )),
    );
  }
}

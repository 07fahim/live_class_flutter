import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  List<String> Friends=["Mainu",'Rabby','Asif'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Scrollbar(
          thickness: 4,
          child: ListView.builder(
              itemCount:Friends.length,
              itemBuilder: (context, index) => ListTile(
                    title: Text(Friends[index]),
                  )),
        ),
      ),
    );
  }
}

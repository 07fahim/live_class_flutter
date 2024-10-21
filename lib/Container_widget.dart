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
          appBar: AppBar(
            centerTitle: true,
            title: Text("My App Bar"),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
            backgroundColor: Colors.lightBlue,
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ))
            ],
          ),
          backgroundColor: Colors.blue.shade100,
          body: Center(
              child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Center(
              child: Text(
                "Fahim",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          )),
        ));
  }
}

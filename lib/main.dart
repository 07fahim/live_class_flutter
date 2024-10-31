import 'package:flutter/material.dart';

// ListView.Separator, Container

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Hello World App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  List<String> friendList = [
    'Iram',
    'Shabbin',
    'Rakib',
    'Hasan',
    'Roy',
    'Niloy',
    'Hasan',
    'Fahad',
    'Nilly',
    'Touhid',
    'Mony',
    'Random',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Home'),
    backgroundColor: Colors.green,
    ),
      body: ListView.builder(
          itemCount:friendList.length,
          itemBuilder:(BuildContext context,int index){
            return Column(
              children: [
                Text(friendList[index]),
                Divider(
                  height: 10,
                  thickness: 5,
                  color: Colors.redAccent,
                  indent: 10,
                  endIndent:12,
                )
              ],
            );
          }),
    );
  }
}


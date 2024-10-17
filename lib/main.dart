import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home App",
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        titleSpacing: 2,
        centerTitle: true,
        backgroundColor: Colors.blue.shade100,
        elevation: 10,
        toolbarHeight: 80,
        toolbarOpacity: 1,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete))
        ],
      ),
      backgroundColor: Colors.blue.shade100,
      drawer: Drawer(
        backgroundColor: Colors.blue.shade100,
        shadowColor: Colors.blue.shade100,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.blue.shade100,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32,horizontal:120),
          child: Column(
            children: [
              Text("List"),
            ],
          ),
        ),
      ),
    );
  }
}

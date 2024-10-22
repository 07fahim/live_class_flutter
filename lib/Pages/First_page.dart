import 'package:flutter/material.dart';
import 'package:live_class_flutter/Pages/Second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 10,centerTitle: true,
        title: Text(
                  "First Page",
                  style: TextStyle(color: Colors.white),
                ),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,'/secondpage');},
              child: Text("Go to Second page"))),
    );
  }
}

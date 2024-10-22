import 'package:flutter/material.dart';
import 'package:live_class_flutter/Pages/First_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 10,centerTitle: true,
        title: Text(
          "Second Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/firstpage");
              },
              child: Text("Go to First page"))),
    );
  }
}



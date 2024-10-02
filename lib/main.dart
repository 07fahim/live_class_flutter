import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Text(
            "Hello World!! we are writting our first flutter code",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            maxLines: 1,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.indigoAccent,
              //backgroundColor: Colors.black,
              wordSpacing: 2.5,
              letterSpacing: 1.1,

              decoration: TextDecoration.lineThrough,
              height: 3,
            ),
            //textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}

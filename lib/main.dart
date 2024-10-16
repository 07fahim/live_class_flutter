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
        backgroundColor: Colors.cyan,
        elevation: 100,
        toolbarHeight: 80,
        toolbarOpacity: 1,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Text(
              "Sign in with email",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.blueGrey,
                  fontFamily: 'Rubik'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'We are ready to design more-value to your business, startup,app, website, and product.',
              style: TextStyle(fontSize: 18, color: Colors.black54),
              textDirection: TextDirection.ltr,
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                TextField(keyboardType:TextInputType.emailAddress,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.grey.shade700,fontWeight:FontWeight.w600),
                    hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500),
                    prefixIcon:Icon(Icons.email_rounded,color: Colors.black38,),
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                            color: Colors.black38,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            )),
                    focusedBorder:OutlineInputBorder(borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),borderRadius: BorderRadius.all(Radius.circular(20)))
                  ),
                  
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

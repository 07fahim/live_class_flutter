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
        toolbarOpacity:1,
      ),
      backgroundColor: Colors.blue.shade100,
      body: Column(
        children: [
        SizedBox(
        height: 15,
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
        padding: EdgeInsets.all(20),
        child: Text(
          'We are ready to design more-value to your business, startup,app, website, and product.',
          style: TextStyle(fontSize: 18, color: Colors.black54),
          textDirection: TextDirection.ltr,
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(keyboardType: TextInputType.emailAddress,
              style: TextStyle(fontSize: 18, color: Colors.black),
              decoration: InputDecoration(
                hintText: "Email",
                labelText: "Email",
                labelStyle: TextStyle(
                    color: Colors.grey.shade700, fontWeight: FontWeight.w700),
                hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w500),
                prefixIcon: Icon(Icons.email_rounded, color: Colors.black38,),
                filled: true,
                fillColor: Colors.white70,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Colors.black38,
                      //strokeAlign: BorderSide.strokeAlignOutside,
                    )),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                  color: Colors.grey.shade300,
                  //strokeAlign: BorderSide.strokeAlignOutside,
                ), borderRadius: BorderRadius.all(Radius.circular(20))),
              ),

            ),
          ],
        ),
      ),
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(style: TextStyle(fontSize: 18, color: Colors.black),
            keyboardType:TextInputType.text,

            decoration: InputDecoration(
              hintText: "Password",
              hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500),
              labelText: "Password",
              labelStyle: TextStyle(
                  color: Colors.grey.shade700, fontWeight: FontWeight.w700),
              counterText: "Forgot Password ?",
              counterStyle: TextStyle(fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
              prefixIcon: Icon(Icons.lock_rounded, color: Colors.black38),
              suffixIcon: Icon(
                  Icons.visibility_off_rounded, color: Colors.black87),
              filled: true,
              fillColor: Colors.white70,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: Colors.black38,
                    //strokeAlign: BorderSide.strokeAlignOutside,
                  )),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                color: Colors.grey.shade300,
                //strokeAlign: BorderSide.strokeAlignOutside,
              ), borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            obscureText: true,
          ),
        ),
      ],
      ),
      Column(
        children: [
          InkWell(
            child: ElevatedButton(onPressed: () {}, child: Text("Get Started",),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),),
                padding: EdgeInsets.symmetric(horizontal: 150,vertical:15),textStyle: TextStyle(fontSize: 17)
              )),
          ),
            ],
          )
        ],
      ),
    );
  }
}

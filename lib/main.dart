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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(barrierColor: Colors.white,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            "Delete",
                          ),
                          backgroundColor: Colors.pink,
                          titleTextStyle:
                              TextStyle(color: Colors.white, fontSize: 18),
                          content: Text(
                            "Are you sure?",
                            style: TextStyle(color: Colors.white),
                          ),
                          actions: [
                            InkWell(child: TextButton(onPressed: () {Navigator.pop(context);}, child: Text("No",style:TextStyle(color: Colors.white),))),
                            InkWell(child: TextButton(onPressed: () {Navigator.pop(context);}, child: Text("Yes",style:TextStyle(color: Colors.white)))),
                          ],
                        );
                      });
                },
                child: Text("Tap"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  alignment: Alignment.center,
                  elevation: 10,
                  shadowColor: Colors.purple,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.white,
                          width: 4,
                          strokeAlign: BorderSide.strokeAlignOutside),
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: Size(150, 50),
                )),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                print("Click on");
              },
              child: Text("Click"),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  alignment: Alignment.center,
                  elevation: 10,
                  shadowColor: Colors.purple,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.white,
                          width: 4,
                          strokeAlign: BorderSide.strokeAlignOutside),
                      borderRadius: BorderRadius.circular(10)),
                  minimumSize: Size(150, 50)),
            ),
            SizedBox(
              height: 30,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.insert_emoticon_sharp),
                style: IconButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    alignment: Alignment.center,
                    elevation: 10,
                    shadowColor: Colors.purple,
                    padding: EdgeInsets.all(30),
                    iconSize: 30,
                    shape: CircleBorder(
                        side: BorderSide(
                            color: Colors.white,
                            width: 4,
                            strokeAlign: BorderSide.strokeAlignOutside)),
                    fixedSize: Size(100, 100))),
            SizedBox(height: 10),
            FloatingActionButton.large(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              onPressed: () {},
              child: Icon(Icons.add),
              tooltip: 'This is a add button',
              elevation: 10,
              shape: CircleBorder(
                  side: BorderSide(
                      color: Colors.white,
                      width: 4,
                      strokeAlign: BorderSide.strokeAlignOutside)),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Click Here"),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                alignment: Alignment.center,
                elevation: 10,
                shadowColor: Colors.purple,
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.white,
                        width: 4,
                        strokeAlign: BorderSide.strokeAlignOutside),
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: Size(150, 50),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                print('On Tap');
              },
              onTapCancel: () {
                print('OnTap Cancel');
              },
              onDoubleTap: () {
                print('Double press');
              },
              onLongPress: () {
                print('Long press');
              },
              onLongPressCancel: () {
                print('Long press Cancel');
              },
              onLongPressEnd: (deatails) {
                print("Long press end");
              },
              child: Column(
                children: [
                  Text('Simple Text'),
                  Text('Simple Text'),
                  Text('Simple Text'),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                print("Tap");
              },
              child: Text("Behave like a button"),
              borderRadius: BorderRadius.circular(10),
              splashColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

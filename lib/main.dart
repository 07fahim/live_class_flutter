import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';

void main() {
  runApp(CupertinoExpApp());
}

class CupertinoExpApp extends StatelessWidget {
  const CupertinoExpApp({super.key});

  @override
  Widget build(BuildContext context) {
    if(Platform.isIOS){
    return const CupertinoApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );}
    else{
      return MaterialApp(
        home: Home(),
      );
    }
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          padding: EdgeInsetsDirectional.all(10),
          middle: Text("Home"),
          backgroundColor: CupertinoColors.link,
          leading: Icon(
            CupertinoIcons.home,
            color: CupertinoColors.white,
          ),
          trailing: Icon(
            CupertinoIcons.add_circled,
            color: CupertinoColors.white,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: CupertinoButton.filled(
              borderRadius: BorderRadius.circular(10),
              child: const Text(
                "Tap Here",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            )),
            CupertinoListTile(
              title: Text("Name"),
              subtitle: Text("name"),
              trailing: Icon(CupertinoIcons.airplane),
            ),
            CupertinoTextField(),
            CupertinoSwitch(value:false, onChanged:(value){})
          ],
        ));
  }
}

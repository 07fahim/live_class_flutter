import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kDebugMode,
      builder: (BuildContext context) => Myapp(),
    ),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    print(screenSize.width);
    print(screenSize.height);
    print(screenSize.aspectRatio);
    print(screenSize.longestSide);
    print(screenSize.shortestSide);
    print(screenSize.flipped);

    print(MediaQuery.of(context).size);
    print(MediaQuery.of(context).orientation);

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("My appBar"),
      // ),
      // body: FractionallySizedBox(
      //   widthFactor: 0.7,
      //   heightFactor: 0.5,
      //   child: ColoredBox(color: Colors.blue),
      //   alignment: Alignment.center,
      // ),
      // body: AspectRatio(aspectRatio: 10/9,child: ColoredBox(color: Colors.orange),),

      body: SafeArea(
        top: true,
        minimum: EdgeInsets.only(top:20),
        maintainBottomViewPadding:true,
        child: Tooltip(
          message: "Container",
          triggerMode: TooltipTriggerMode.tap,
          child: Column(
            children: [
              Expanded(flex:2,child: Container(width:300,height: 300,color:Colors.orange,)),
              Expanded(flex:2,child: Container(width:300,height: 300,color:Colors.pinkAccent,)),
              Expanded(flex:1,child: Container(width:300,height: 300,color:Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}

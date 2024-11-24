import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );

  }


}

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    Size screenSize =MediaQuery.of(context).size;

    print(screenSize.width);
    print(screenSize.height);
    print(screenSize.aspectRatio);
    print(screenSize.longestSide);
    print(screenSize.shortestSide);
    print(screenSize.flipped);


    print(MediaQuery.of(context).size);
    print(MediaQuery.of(context).orientation);



    return Scaffold(
      appBar: AppBar(
        title: const Text("My appBar"),
      ),
      // body:Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Wrap(
      //       alignment: WrapAlignment.center,
      //       crossAxisAlignment: WrapCrossAlignment.start,
      //       spacing: 10,
      //       runAlignment: WrapAlignment.start,
      //       runSpacing: 10,
      //
      //       children: [
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //         ElevatedButton(onPressed: (){}, child:Text("Button")),
      //
      //
      //       ],
      //     ),
      //   ],
      // ),
      // body:LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     return Center(child: Text("${constraints.maxHeight} ${constraints.maxWidth}"));
      //   }
      // ) ,
      body: OrientationBuilder(builder: (context, orientation){
        if(orientation == Orientation.portrait){
          return Center(child: Text("Hello world"));
        }else
          return Center(child: Text("Hello another world"));
      }),
    );

  }

}
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
  Home({super.key});


  MySnacbar(message,context){

    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.blue.shade200,
          //padding: EdgeInsets.all(10),


          content:Text(message,style:TextStyle(fontSize: 20),)),
    );
  }

  List<String> friends = [
    "Fahim",
    "Mainu",
    "Asif",
    "Rabby",
    "Ammar",
    "Waser",
    "Forhad",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
    "CR7",
  ];

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
          IconButton(onPressed: () {MySnacbar('Edit', context);}, icon: Icon(Icons.edit)),
          IconButton(onPressed: () {MySnacbar('Delete', context);}, icon: Icon(Icons.delete))
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
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 120),
          child: Column(
            children: [
              Text("List"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: 0,
          onDestinationSelected: (int selectedIndex) {},
          destinations: [
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue.shade400,
                ),
                label: "Home"),
            NavigationDestination(
                icon: Icon(
                  Icons.search,
                  color: Colors.lightBlueAccent,
                ),
                label: "Search")
          ]),
      // body: Scrollbar(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //         Text("7777"),
      //       ],
      //     ),
      //   ),
      // ),
      body: Scrollbar(
        thickness: 5,
        interactive: true,
        trackVisibility: true,
        thumbVisibility: true,
        radius: Radius.circular(10),
        // child: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: ListView.builder(
        //
        //     itemCount: 100,
        //
        //       itemBuilder:(context,index){
        //
        //     return Text("item $index");
        //   }),
        // ),
        child: ListView.builder(
            itemCount: friends.length,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(friends[index]),
              );
            }),
      ),
    );
  }
}

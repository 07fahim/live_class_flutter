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
                //showAboutDialog(context:context);
                showModalBottomSheet(
                    //barrierColor: Colors.redAccent,
                    backgroundColor: Colors.deepOrangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),enableDrag:true ,isScrollControlled:false,useSafeArea:true,
                    context: context,
                    builder: (ctx) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 18),
                                child: Text(
                                  "Tittle",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),Divider(color: Colors.greenAccent,thickness: 4,
                          height: 10,),
                          Text('Sample'),SizedBox(height:300,),
                          Row(mainAxisSize: MainAxisSize.max,
                           mainAxisAlignment: MainAxisAlignment.end,
                            //crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(onPressed: (){}, child:Text("Cancel"),),
                                //SizedBox(width: 6,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(onPressed: (){}, child:Text("Save")),
                                )
                              ]
                          )
                        ],
                      );
                    });
              },
              child: Text("Show Dialog"),
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  side: BorderSide(color: Colors.white70, width: 2)),
            )
          ],
        ),
      ),
    );
  }
}

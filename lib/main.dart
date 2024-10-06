import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: true,
        ),
        // body: Image.asset(
        //   'assets/images/cr7.jpg',
        //   width: 350,
        //   height: 400,
        //   fit: BoxFit.scaleDown,
        //   alignment: Alignment.bottomCenter,
        // )
        //   body: Image.network(
        //       'https://wallpapers.com/images/hd/cristiano-ronaldo-chest-signal-5j34l030l0ys94wg.jpg',
        //       width: 350, height: 400,
        //   fit: BoxFit.scaleDown,alignment: Alignment.bottomCenter),
        // )
        //   body: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Text("Hello"),
        //       Text("Fahim Faiyaz"),
        //       Image.network(
        //           'https://wallpapers.com/images/hd/cristiano-ronaldo-chest-signal-5j34l030l0ys94wg.jpg',
        //           width: 350,
        //           height: 400,
        //           fit: BoxFit.cover),
        //       Text("CR7")
        //     ],
        //   ),
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Text('Hello'),
        //     Text("Fahim Faiyaz"),
        // Image.network(
        //             'https://wallpapers.com/images/hd/cristiano-ronaldo-chest-signal-5j34l030l0ys94wg.jpg',
        //             width: 200,
        //             fit: BoxFit.cover),
        //         Text("CR7")
        //   ],
        // ),
          body: Column(
            children: [
              Text("Hello"),
              Text("Fahim Faiyaz"),
              Row(
                children: [
                  Image.network(
                      'https://wallpapers.com/images/hd/cristiano-ronaldo-chest-signal-5j34l030l0ys94wg.jpg',
                      width: 200,
                      fit: BoxFit.cover),
                  Text("CR7")
                ],
              ),
              Row(
                children: [
                  Image.network(
                                'https://wallpapers.com/images/hd/cristiano-ronaldo-chest-signal-5j34l030l0ys94wg.jpg',
                                width: 200,
                                fit: BoxFit.cover),
                            Text("CR7")
                ],
              )
            ],
          ),
        )
    );
  }
}

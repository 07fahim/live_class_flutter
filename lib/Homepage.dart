import 'package:flutter/material.dart';
import 'package:live_class_flutter/Drawer.dart';
import 'package:live_class_flutter/Pages/First_page.dart';
import 'package:live_class_flutter/Pages/Home_page.dart';
import 'package:live_class_flutter/Pages/Second_page.dart';
import 'package:live_class_flutter/Pages/Settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DrawerPage(),
      routes: {
        '/drawerpager':(context) => DrawerPage(),
        '/homepage':(context)=>HomePage(),
        '/settingspage':(context)=>SettingsPage()

      },
    );
  }
}

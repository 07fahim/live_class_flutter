import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        elevation: 10,
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu, color: Colors.white),
          ),
        ),
        title: Text(
          "First Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade300,
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue.shade300),
                  accountName: Text("Fahim Faiyaz"),
                  accountEmail: Text("Faiyazfahim743@gmail.com"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'H O M E',
                style: TextStyle(color: Colors.white),
              ),
                onTap:(){
                Navigator.pop(context);
                  Navigator.pushNamed(context,'/homepage');
                }
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                'S E T T I N G S',
                style: TextStyle(color: Colors.white),
              ),
                onTap:(){
                Navigator.pop(context);
                  Navigator.pushNamed(context,'/settingspage');
                }
            ),
          ],
        ),
      ),
    );
  }
}

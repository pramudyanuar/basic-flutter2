import 'package:flutter/material.dart';

class BottomnavbarApp extends StatefulWidget {
  const BottomnavbarApp({super.key});

  @override
  State<BottomnavbarApp> createState() => _BottomnavbarAppState();
}

class _BottomnavbarAppState extends State<BottomnavbarApp> {
  late int number;

  List screens = [
    Center(child: Text("Home")),
    Center(child: Text("Settings")),
    Center(child: Text("Account")),
  ];

  @override

  void initState() {
    number = 0;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOTTOM NAVBAR"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: screens[number],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: number,
        selectedIconTheme: IconThemeData(color: Colors.blue),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        onTap: (value) {
          setState(() {
            number = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
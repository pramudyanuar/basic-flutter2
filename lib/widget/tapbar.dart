import 'package:flutter/material.dart';

class TabbarApp extends StatefulWidget {
  const TabbarApp({super.key});

  @override
  State<TabbarApp> createState() => _TabbarAppState();
}

class _TabbarAppState extends State<TabbarApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TABBAR"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Settings",
              ),
              Tab(
                icon: Icon(Icons.account_circle),
                text: "Account",
              ),
            ],
          ),
          ),
        body: TabBarView(
          children: [
            Center(
              child: Text("Home"),
            ),
            Center(
              child: Text("Settings"),
            ),
            Center(
              child: Text("Account"),
            ),
          ],
        )
      ),
    );
  }
}
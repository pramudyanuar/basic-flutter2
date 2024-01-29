import 'package:flutter/material.dart';
import './counter.dart';
import './dialog.dart';
import './snackbar.dart';
import './textfield.dart';
import './tapbar.dart';
import './dropdown.dart';
import './bottomnavbar.dart';
import './bottomsheet.dart';
import './drawer.dart';
import './navigation.dart';

class NavigationApp extends StatefulWidget {
  const NavigationApp({super.key});

  @override
  State<NavigationApp> createState() => _NavigationAppState();
}

class _NavigationAppState extends State<NavigationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAIN MENU"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CounterApp()));
                  },
                  child: Text("Counter App")
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BottomsheetApp()));
                  },
                  child: Text("BottomSheets App")
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BottomnavbarApp()));
                  },
                  child: Text("BottomNavbar App")
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DialogApp()));
                  },
                  child: Text("Dialog App")
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerApp()));
                  },
                  child: Text("Drawer App")
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DropdownApp()));
                  },
                  child: Text("Dropdown App")
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TabbarApp()));
                  },
                  child: Text("Topbar App")
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SnackbarApp()));
                  },
                  child: Text("Snackbar App")
                ),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TextfieldApp()));
                  },
                  child: Text("Textfield App")
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
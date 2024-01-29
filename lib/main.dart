import 'package:flutter/material.dart';
import './widget/counter.dart';
import './widget/dialog.dart';
import './widget/snackbar.dart';
import './widget/textfield.dart';
import './widget/tapbar.dart';
import './widget/dropdown.dart';
import './widget/bottomnavbar.dart';
import './widget/bottomsheet.dart';
import './widget/drawer.dart';
import './widget/navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationApp()
    );
  }
}

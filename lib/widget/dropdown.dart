import 'package:flutter/material.dart';

class DropdownApp extends StatefulWidget {
  const DropdownApp({super.key});

  @override
  State<DropdownApp> createState() => _DropdownAppState();
}

class _DropdownAppState extends State<DropdownApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DROPDOWN"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              value: "One",
              child: Text("One"),
            ),
            DropdownMenuItem<String>(
              value: "Two",
              child: Text("Two"),
            ),
            DropdownMenuItem<String>(
              value: "Three",
              child: Text("Three"),
            ),
          ],
          onChanged: (String? value) {
            setState(() {
              print(value);
            });
          },
          hint: Text("Select"),
        )
      ),
    );
  }
}
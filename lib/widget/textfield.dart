import 'package:flutter/material.dart';

class TextfieldApp extends StatefulWidget {
  const TextfieldApp({super.key});

  @override
  State<TextfieldApp> createState() => _TextfieldAppState();
}

class _TextfieldAppState extends State<TextfieldApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEXTFIELD"),
        centerTitle: true,
        ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height:20),
            TextField(
              decoration: InputDecoration(
                hintText: "Masukkan nama anda",
                labelText: "Nama",
                hintMaxLines: 2,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
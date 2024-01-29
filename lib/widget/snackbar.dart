import 'package:flutter/material.dart';

class SnackbarApp extends StatefulWidget {
  const SnackbarApp({super.key});

  @override
  State<SnackbarApp> createState() => _SnackbarAppState();
}

class _SnackbarAppState extends State<SnackbarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HALO"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Snackbar"),
          onPressed: () {
           ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Halo ini snackbar"),
              action: SnackBarAction(
                label: "Tutup",
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },                
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            )
           );
          }
        ),
      )
    );
  }
}
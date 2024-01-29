import 'package:flutter/material.dart';

class DialogApp extends StatefulWidget {
  const DialogApp({super.key});

  @override
  State<DialogApp> createState() => _DialogAppState();
}

class _DialogAppState extends State<DialogApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HALO"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Dialog"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog.fullscreen(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Halo"),
                        ElevatedButton(
                          child: Text("Tutup"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ),
                  ),
                );
              }
            );
          }
        ),
      )
    );
  }
}
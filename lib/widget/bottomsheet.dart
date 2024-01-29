import 'package:flutter/material.dart';

class BottomsheetApp extends StatefulWidget {
  const BottomsheetApp({super.key});

  @override
  State<BottomsheetApp> createState() => _BottomsheetAppState();
}

class _BottomsheetAppState extends State<BottomsheetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOTTOM SHEET"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    color: Colors.blue,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Bottom Sheet",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Close Bottom Sheet"),
                          )
                        ],
                      ),
                    ),
                  );
                }
              );
            },
            child: Text("Show Bottom Sheet"),
          ),
        ),
      )
    );
  }
}
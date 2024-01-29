import 'package:flutter/material.dart';


class CounterApp extends StatefulWidget {
  CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$_counter", style: const TextStyle(fontSize: 50)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("$_counter");
                      setState(() {
                        _counter++;
                      });
                    },
                    child: const Text("+"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("$_counter");
                      setState(() {
                        _counter--;
                      });
                    },
                    child: const Text("-"),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
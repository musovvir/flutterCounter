import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text("Counter", style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Tap \"-\" to decrement",
                    style: TextStyle(color: Colors.white)),
                CounterWidget(),
                const Text("Tap \"+\" to increment",
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget> {
  late int _count;

  @override
  void initState() {
    _count = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _count != 0 && _count > 0 ? _count-- : 0;
              });
            },
          ),
        ),
        Expanded(
          child: Text('${_count}',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white)),
        ),
        Expanded(
          child: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                _count++;
              });
            },
          ),
        ),
      ],
    ));
  }
}

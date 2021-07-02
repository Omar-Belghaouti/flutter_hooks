import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Timer _timer;
  int _number = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _number = _timer.tick;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter HOokS!'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Text(
          '$_number',
          style: TextStyle(fontSize: 35),
        ),
      )),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

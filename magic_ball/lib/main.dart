import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: BallApp(),
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.blue.shade900,
        ),
      ),
    ),
  );
}

class BallApp extends StatefulWidget {
  @override
  _BallAppState createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int ballNumber = 1;

  void answerBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            answerBall();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/Screen/task_screen.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tasks(),
    );
  }
}

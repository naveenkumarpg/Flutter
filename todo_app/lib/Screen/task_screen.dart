import 'package:flutter/material.dart';
import 'package:todo_app/Components/addtask.dart';
import 'package:todo_app/Components/taskitem.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return AddTask();
            },
          );
          print('Pressed on FloatingActionButton');
        },
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'TODO',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '12 Tasks Pending',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TaskItem(),
                      TaskItem(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

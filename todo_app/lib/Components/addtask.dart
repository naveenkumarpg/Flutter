import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextField(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Add to list'),
              onPressed: () {
                print('adding to the list');
              },
            )
          ],
        ),
      ),
    );
  }
}

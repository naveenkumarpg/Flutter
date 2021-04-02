import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
              SizedBox(
                width: double.infinity,
                height: 10.0,
              ),
              Text(
                'Naveen Setty',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 10.0,
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal.shade200,
                  fontFamily: 'BebasNeue',
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 5.0,
              ),
              SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.local_phone_outlined,
                        color: Colors.teal,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        '+44 74047 75057',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email_outlined,
                        color: Colors.teal,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 23.0,
                      ),
                      Text(
                        'naveenkumarpg@gmail.com',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

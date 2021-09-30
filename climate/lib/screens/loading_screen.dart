import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Map latlong = getLocation();
    print(latlong);
  }

  Map getLocation() {
    return {"Lat": 51.5558, "Long": 1.7797};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

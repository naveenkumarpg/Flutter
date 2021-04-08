import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  final Color colour;
  final Widget child;
  final Function onPress;
  BMICard({@required this.colour, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(9.0),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

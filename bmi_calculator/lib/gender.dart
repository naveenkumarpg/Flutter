import 'package:flutter/material.dart';

import 'constants/constants.dart';

class Gender extends StatelessWidget {
  final IconData iconType;
  final String cardLabel;

  Gender({@required this.iconType, this.cardLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconType,
          size: 80.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cardLabel,
          style: labelStyles,
        )
      ],
    );
  }
}

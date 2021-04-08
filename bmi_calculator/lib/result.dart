import 'package:bmi_calculator/card.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final String bmiResults;
  final String resultText;
  final String interpretation;

  const Results(
      {@required this.bmiResults,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text(
                "Your Results",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
                flex: 6,
                child: BMICard(
                  colour: inactiveCardColor,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          resultText,
                          style: TextStyle(fontSize: 30, color: Colors.green),
                        ),
                        Text(
                          bmiResults,
                          style: tileHeadStyle,
                        ),
                        Text(
                          interpretation,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            FlatButton(
              child: Text(
                'Re-Caluculate',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              height: 80.0,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.pinkAccent,
            ),
          ],
        ));
  }
}

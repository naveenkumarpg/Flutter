import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card.dart';
import 'constants/constants.dart';
import 'gender.dart';
import 'result.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  int weightInitialValue = 180;
  int height = 180;
  int weight = 80;
  int age = 20;

  void changeCardColor(gender) {
    maleCardColor = inactiveCardColor;
    femaleCardColor = inactiveCardColor;

    setState(() {
      (gender == GenderType.male)
          ? maleCardColor = activeCardColor
          : femaleCardColor = activeCardColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICard(
                    colour: maleCardColor,
                    child: Gender(
                      iconType: FontAwesomeIcons.male,
                      cardLabel: "MALE",
                    ),
                    onPress: () {
                      changeCardColor(GenderType.male);
                    },
                  ),
                ),
                Expanded(
                  child: BMICard(
                    colour: femaleCardColor,
                    child: Gender(
                      iconType: FontAwesomeIcons.female,
                      cardLabel: "FEMALE",
                    ),
                    onPress: () {
                      changeCardColor(GenderType.female);
                    },
                  ),
                ),
              ],
            )),
            Expanded(
              child: BMICard(
                colour: inactiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: labelStyles,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '$height',
                          style: tileHeadStyle,
                        ),
                        Text('cm', style: labelStyles),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      divisions: 200,
                      activeColor: Colors.pink,
                      label: 'HEIGHT',
                      onChanged: (double value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICard(
                    colour: inactiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: labelStyles,
                        ),
                        Text(
                          weight.toString(),
                          style: tileHeadStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: Text("weight Minus"),
                              backgroundColor: Color(0xFF4c4f5e),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              heroTag: Text("weight Plus"),
                              backgroundColor: Color(0xFF4c4f5e),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BMICard(
                    colour: inactiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: labelStyles,
                        ),
                        Text(
                          age.toString(),
                          style: tileHeadStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: Text("Age Minus"),
                              backgroundColor: Color(0xFF4c4f5e),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              heroTag: Text("Age Plus"),
                              backgroundColor: Color(0xFF4c4f5e),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            FlatButton(
              child: Text(
                'Caluculate',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              height: 80.0,
              minWidth: double.infinity,
              onPressed: () {
                Calculator cal = Calculator(height: height, weight: weight);

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Results(
                      bmiResults: cal.calculateBMI(),
                      resultText: cal.getResult(),
                      interpretation: cal.getMessage());
                }));
              },
              color: Colors.pinkAccent,
            ),
          ],
        ));
  }
}

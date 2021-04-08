import 'dart:math';

class Calculator {
  double _bmi;
  final int height;
  final int weight;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    print('weight : $weight');
    print('height : $height');
    print('bmi : $_bmi');
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getMessage() {
    if (_bmi > 25) {
      return 'You have higher than normal body weight, Try to exercise more and reduce weight ';
    } else if (_bmi > 18.5) {
      return 'Your weight is normal, Good job ..!';
    } else {
      return 'Your body weight is lower than normal, try to eat more and increase your weight';
    }
  }
}

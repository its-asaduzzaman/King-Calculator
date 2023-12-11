import 'dart:math';

class BmiCalculation {
  BmiCalculation(
      {required this.height1, required this.height2, required this.weight});

  final int height1;
  final int height2;
  final double weight ;
  late final int height;

  double _bmi = 0;

  String calculateBMI() {
    height = ((height1 * 12) + height2) ;

    // _bmi = weight / pow(height / 100, 2);
    _bmi = 703 * (weight * 2.20462) / pow(height, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {

    if (_bmi >= 25) {
      return 'Overweight and Bmi is ${_bmi.toStringAsFixed(1)}  ';
    } else if (_bmi > 18.5) {
      return 'Normal and Bmi is ${_bmi.toStringAsFixed(1)} ';
    } else {
      return 'Underweight and Bmi is ${_bmi.toStringAsFixed(1)} ';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

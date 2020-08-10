import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});
  final int height;
  final double weight;
  double _bmi = 0;

  String BMI() {
    _bmi = (weight / pow((height) / 100, 2));
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String Result() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normai";
    } else {
      return "Underweight";
    }
  }

  String Intr()
  {
    if (_bmi >= 25) {
      return "YOU HAVE A HIGHER THAN NORMAL BODY WEIGHT.TRY TO REDUCE YOUR WEIGHT";
    } else if (_bmi > 18.5) {
      return "YOU HAVE A NORMAL BODY WEIGHT.GOOF JOB!";
    } else {
      return "YOU HAVE A LOWER THAN NORMAL BODY WEIGHT. YOU CAN EAT MORE";
    }
  }
}

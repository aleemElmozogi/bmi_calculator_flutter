import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});
  final int height;
  final int weight;
  late double _bmi = weight / pow(height / 100, 2);



  String calculateBMI()=>_bmi.toStringAsFixed(1);

  String getResult() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }
  String getInterpretation() {
    if (_bmi >= 25)
      return 'You have higher than normal body weight. Try exercise more.';
    else if (_bmi > 18.5)
      return 'You have a normal body weight. Good jop!';
    else
      return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}

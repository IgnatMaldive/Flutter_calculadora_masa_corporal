import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Peso bajo';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Tu peso es demasiado elevado. Deberías hacer más ejercicio!';
    } else if (_bmi >= 18.5) {
      return 'Tu peso es correcto. Bien hecho!';
    } else {
      return 'Tu peso es demasiado bajo. Deberías comer más!';
    }
  }
}

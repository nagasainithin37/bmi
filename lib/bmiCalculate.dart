import 'package:flutter/material.dart';
import 'dart:math';
import 'const.dart';

class BmiCalculate {
  BmiCalculate({int height, int age, int weight}) {
    this.height = height;
    this.weight = weight;
    this.age = age;
  }

  int height, weight, age;
  double bmi;
  String _bmis;
  Text bmiStatus() {
    bmi = weight / pow(height / 100, 2);
    print(bmi);
    _bmis = bmi.toStringAsFixed(1);
    if (bmi >= 30)
      return Text(
        'Obesity',
        style: TextStyle(color: Colors.red, fontSize: 22),
      );
    else if (bmi > 25)
      return Text(
        'Over Weight',
        style: TextStyle(color: Colors.deepOrange, fontSize: 22),
      );
    else if (bmi > 18.5)
      return Text(
        'Normal',
        style: TextStyle(color: Colors.green, fontSize: 22),
      );
    else
      return Text(
        'Under Weight',
        style: TextStyle(color: Colors.red, fontSize: 22),
      );
  }

  double getBmi() {
    return bmi;
  }

  Text bmiResult() {
    return Text(_bmis, style: kresultNumberStyle);
  }

  Text bmiDesc() {
    if (bmi >= 30)
      return Text(
        'You are over weighted Try to reduce food ASAP!',
        style: kResultDescStyle,
      );
    else if (bmi > 25)
      return Text(
        'Your wight is a bit higher than expected Maintain a proper Diet!',
        style: kResultDescStyle,
      );
    else if (bmi > 18.5)
      return Text(
        'Your BMI is normal keep going on :)',
        style: kResultDescStyle,
      );
    else
      return Text(
        'You are BMI is less than expected. You can eat a bit more',
        style: kResultDescStyle,
      );
  }
}

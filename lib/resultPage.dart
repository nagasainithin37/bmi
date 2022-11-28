import 'package:bmi_calculator/const.dart';
import 'package:flutter/material.dart';
import 'bottomButton.dart';
import 'bmiCalculate.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.res);
  BmiCalculate res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff1d1e33),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: res.bmiStatus(),
                  ),
                  Container(
                    child: res.bmiResult(),
                  ),
                  Container(
                    child: res.bmiDesc(),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  )
                ],
              ),
            ),
          ),
          BottomButton('Re-Calculate', () {
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}

import 'package:bmi_calculator/exercise2.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'bmiCalculate.dart';
import 'dart:math';
import 'bottomButton.dart';
import 'exercises1.dart';
import 'exercise2.dart';
import 'exercise3.dart';
import 'diet1.dart';
import 'diet2.dart';
import 'diet3.dart';

class NewRes extends StatefulWidget {
  NewRes(height, weight, age) {
    this.height = height;
    this.weight = weight;
    this.age = age;
    this.bmi = (weight / pow(height / 100, 2));
  }
  double bmi;
  int height;
  int weight;
  int age;
  @override
  State<NewRes> createState() => _NewResState();
}

class _NewResState extends State<NewRes> {
  bool underWeight, normal, overWeight;
  Text getStatus() {
    if (widget.bmi >= 30) {
      setState(() {
        underWeight = false;
        normal = false;
        overWeight = true;
      });
      return Text(
        'Obesity',
        style: TextStyle(color: Colors.red, fontSize: 22),
      );
    } else if (widget.bmi > 25) {
      setState(() {
        underWeight = false;
        normal = false;
        overWeight = true;
      });
      return Text(
        'Over Weight',
        style: TextStyle(color: Colors.deepOrange, fontSize: 22),
      );
    } else if (widget.bmi > 18.5) {
      setState(() {
        underWeight = false;
        normal = true;
        overWeight = false;
      });
      return Text(
        'Normal',
        style: TextStyle(color: Colors.green, fontSize: 22),
      );
    } else {
      setState(() {
        underWeight = true;
        normal = false;
        overWeight = false;
      });
      return Text(
        'Under Weight',
        style: TextStyle(color: Colors.red, fontSize: 22),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your BMI"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Your Result',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Expanded(
                child: SfRadialGauge(
                  axes: [
                    RadialAxis(
                      minimum: 5,
                      maximum: 40,
                      interval: 3,
                      ranges: [
                        GaugeRange(
                          startValue: 5,
                          endValue: 11,
                          color: Colors.redAccent,
                        ),
                        GaugeRange(
                          startValue: 11,
                          endValue: 18.4,
                          color: Colors.yellow,
                        ),
                        GaugeRange(
                          startValue: 18.5,
                          endValue: 24.9,
                          color: Colors.green,
                        ),
                        GaugeRange(
                          startValue: 25,
                          endValue: 35,
                          color: Colors.orange,
                        ),
                        GaugeRange(
                          startValue: 35,
                          endValue: 39.9,
                          color: Colors.red,
                        ),
                      ],
                      pointers: [
                        NeedlePointer(
                          value: (widget.bmi),
                          enableAnimation: true,
                        ),
                      ],
                      annotations: [
                        GaugeAnnotation(
                          widget: Text(
                            widget.bmi.toStringAsFixed(3),
                            style: TextStyle(fontSize: 30),
                          ),
                          positionFactor: 0.8,
                          angle: 90,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            getStatus(),
            Visibility(
              visible: underWeight && !normal && !overWeight,
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.lightBlueAccent)))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Exercises1();
                  }));
                },
                child: Text('Exercises'),
              ),
            ),
            Visibility(
              visible: underWeight && !normal && !overWeight,
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.lightBlueAccent)))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Diet1();
                  }));
                },
                child: Text('Diet'),
              ),
            ),
            Visibility(
              visible: !underWeight && normal && !overWeight,
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.lightBlueAccent)))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Exercises2();
                  }));
                },
                child: Text('Exercises'),
              ),
            ),
            Visibility(
              visible: !underWeight && normal && !overWeight,
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.lightBlueAccent)))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Diet2();
                  }));
                },
                child: Text('Diet'),
              ),
            ),
            Visibility(
              visible: !underWeight && !normal && overWeight,
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.lightBlueAccent)))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Exercises3();
                  }));
                },
                child: Text('Exercises'),
              ),
            ),
            Visibility(
              visible: !underWeight && !normal && overWeight,
              child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.lightBlueAccent)))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Diet3();
                  }));
                },
                child: Text('Diet'),
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: BottomButton('Re-Calculate', () {
                  Navigator.pop(context);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

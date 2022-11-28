import 'package:flutter/material.dart';
import 'reusablecard.dart';
import 'inputcard1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'const.dart';
import 'RoundIconButton.dart';
import 'bottomButton.dart';
import 'resultPage.dart';
import 'bmiCalculate.dart';
import 'newRes.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard.m(
                        gender == Gender.male ? boxcolor : inactiveCardColor,
                        inputcard1('MALE', FontAwesomeIcons.mars), () {
                      setState(() {
                        gender = Gender.male;
                      });
                    }),
                  ),
                  Expanded(
                    child: ReusableCard.m(
                        gender == Gender.female ? boxcolor : inactiveCardColor,
                        inputcard1('FEMALE', FontAwesomeIcons.venus), () {
                      setState(() {
                        gender = Gender.female;
                      });
                    }),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard.nm(
                  boxcolor,
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: kInputCardStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'cm',
                              style: kInputCardStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Color(0xffeae2e5),
                              thumbColor: Color(0xffeb1555),
                              overlayColor: Color(0x29eb1555),
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 15),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30)),
                          child: Slider(
                            value: height.toDouble(),
                            min: 130,
                            max: 230,
                            label: '$height',
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard.nm(
                        boxcolor,
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: kInputCardStyle,
                              ),
                              Text(
                                weight.toString(),
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconbutton(FontAwesomeIcons.minus, () {
                                    setState(() {
                                      weight -= 1;
                                    });
                                  }),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  RoundIconbutton(FontAwesomeIcons.plus, () {
                                    setState(() {
                                      weight += 1;
                                    });
                                  })
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                  Expanded(
                    child: ReusableCard.nm(
                        boxcolor,
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: kInputCardStyle,
                              ),
                              Text(
                                age.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 40),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconbutton(FontAwesomeIcons.minus, () {
                                    setState(() {
                                      age -= 1;
                                    });
                                  }),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  RoundIconbutton(FontAwesomeIcons.plus, () {
                                    setState(() {
                                      age += 1;
                                    });
                                  })
                                ],
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
            BottomButton('Calculate', () {
              BmiCalculate calc =
                  BmiCalculate(height: height, weight: weight, age: age);
              print(' fhfh ${calc.getBmi()}');
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NewRes(height, weight, age);
              }));
            })
          ],
        ));
  }
}

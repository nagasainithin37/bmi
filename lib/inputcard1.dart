import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'const.dart';

class inputcard1 extends StatelessWidget {
  inputcard1(this.txtmsg, this.gendericon);

  IconData gendericon;
  String txtmsg;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gendericon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          txtmsg,
          style: kInputCardStyle,
        ),
      ],
    );
  }
}

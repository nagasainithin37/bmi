import 'package:flutter/material.dart';

class RoundIconbutton extends StatelessWidget {
  RoundIconbutton(this.iconData, this.function);
  final IconData iconData;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: function,
      child: Icon(iconData),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}

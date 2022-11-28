import 'package:flutter/material.dart';
import 'resultPage.dart';
import 'const.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.content, this.function);
  String content;
  Function function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        color: Color(0xffeb1555),
        height: bottomButtonHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            content,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}

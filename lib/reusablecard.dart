import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard.m(this.colour, this.inputCard, this.onPress);
  ReusableCard.n(Color x) {
    this.colour = x;
  }
  ReusableCard.nm(Color x, Widget inputCard) {
    this.colour = x;
    this.inputCard = inputCard;
  }
  Color colour;
  Widget inputCard;
  Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: inputCard,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

const cardMargin = EdgeInsets.all(15.0);

class ReusableContainer extends StatelessWidget {
  ReusableContainer({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: cardMargin,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
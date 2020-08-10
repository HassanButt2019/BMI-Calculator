import 'package:flutter/material.dart';


class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.width , this.cardChild });
  final double width;
  final Color colour;
  final cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: width,
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

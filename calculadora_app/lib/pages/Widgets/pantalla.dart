import 'package:flutter/material.dart';

Widget pantallaCalc(String textDisplay, double sizeText) {
  return Container(
    alignment: Alignment.centerRight,
    padding: EdgeInsets.symmetric(horizontal: 40),
    height: 120,
    width: 350,
    color: Colors.transparent,
    child: TextField(
      style: TextStyle(
        color: Colors.black,
        fontSize: sizeText,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.right,
    ),
  );
}

import 'package:flutter/material.dart';

class AppPaddingStyles {
  static EdgeInsets screenPadding =
      const EdgeInsets.only(left: 23, right: 23, top: 55, bottom: 50);
}

class AppTextStyles {
  static TextStyle _textStyle(
      {required Color color,
      required double fontSize,
      required double height,
      FontWeight? fontWeight,
      required letterSpacing,
      String? fontFamily}) {
    return TextStyle(
        color: color,
        fontSize: fontSize,
        height: height,
        letterSpacing: -0.035,
        fontWeight: fontWeight,
        fontStyle: FontStyle.normal,
        fontFamily: fontFamily);
  }

  static TextStyle xl({required Color color}) {
    return _textStyle(
        color: color,
        fontSize: 32,
        height: 1.5,
        letterSpacing: -0.035,
        fontWeight: FontWeight.w900);
  }
}

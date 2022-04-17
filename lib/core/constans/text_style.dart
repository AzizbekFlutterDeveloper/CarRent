import 'package:egar/core/constans/size_config.dart';
import 'package:flutter/material.dart';

class MyTextStyle {
  static bold({double size = 16}) {
    return TextStyle(
      fontSize: getWidth(size),
      fontWeight: FontWeight.w700,
    );
  }

  static normal({double size = 16,Color color = Colors.black}){
    return TextStyle(
      fontSize: getWidth(size),
      fontWeight: FontWeight.w500,
      color: color
    );
  }
}

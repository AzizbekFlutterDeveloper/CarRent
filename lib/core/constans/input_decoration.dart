import 'package:egar/core/constans/size_config.dart';
import 'package:flutter/material.dart';

class MyDecoration {
  static decoration(text) {
    return InputDecoration(
      hintText: text,
      focusedBorder:  OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(color: Colors.grey,width: getWidth(2))
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
  }
}

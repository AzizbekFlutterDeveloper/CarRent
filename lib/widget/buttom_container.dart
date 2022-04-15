import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:flutter/material.dart';

class ButtomContainer extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final String? text; 
  final Function()? onTap;
  const ButtomContainer({ Key? key,this.color,this.text,this.textColor,this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: getHeight(54),
        width: getWidth(335),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: ConsColor.black),
          color: color?? ConsColor.black,
        ),
        child: Center(
          child: Text(text?? "",
            style: TextStyle(
              color: textColor?? Colors.white,
              fontSize: getWidth(17),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
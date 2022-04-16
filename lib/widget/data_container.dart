import 'package:egar/core/constans/size_config.dart';
import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {
  final String? name;
  final String? choose;
  const DataContainer({ Key? key,this.name,this.choose }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name?? "Form",
         style: TextStyle(
            fontSize: getWidth(12),
            fontWeight: FontWeight.w400,
         ),
        ),
        GestureDetector(
          child: Container(
            height: getHeight(45),
            width: getWidth(157),
            padding: EdgeInsets.symmetric(horizontal: getWidth(13)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: Colors.grey),
            ),
            child: Center(
              child: Row(
                children: [
                  Icon(Icons.calendar_today_rounded, color: Colors.grey,size: getWidth(20)),
                  SizedBox(width: getWidth(10)),
                  Text(choose??'Choose',
                    style: TextStyle(
                      color:Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: getWidth(12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
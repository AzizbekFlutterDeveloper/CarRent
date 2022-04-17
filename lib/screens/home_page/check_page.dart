import 'package:egar/core/constans/size_config.dart';
import 'package:egar/core/constans/text_style.dart';
import 'package:egar/widget/buttom_container.dart';
import 'package:flutter/material.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: getHeight(237), width: double.infinity),
          SizedBox(
            height: getHeight(139),
            width: getHeight(139),
            child: Image.asset("assets/image/bg_no.png"),
          ),
          SizedBox(height: getHeight(15)),
          SizedBox(
            height: getHeight(60),
            width: getWidth(204),
            child: Text(
              "Car has been booked successfully",
              textAlign: TextAlign.center,
              style: MyTextStyle.bold(size: 20),
            ),
          ),
          SizedBox(height: getHeight(237)),
          ButtomContainer(
            text: "Back to home",
            onTap: (){
              Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
            },
          ),
        ],
      ),
    );
  }
}

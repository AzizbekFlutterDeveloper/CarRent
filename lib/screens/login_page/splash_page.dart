import 'package:egar/core/constans/size_config.dart';
import 'package:egar/widget/buttom_container.dart';
import 'package:egar/widget/car_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getWidth(20),vertical: getHeight(35)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtomContainer(
              text: "Sign in",
            ),
          ],
        ),
      ),
      
    );
  }
}
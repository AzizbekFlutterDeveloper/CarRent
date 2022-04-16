import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/widget/buttom_container.dart';
import 'package:egar/widget/car_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(20), vertical: getHeight(35)),
        child: Column(
          children: [
            SizedBox(height: getHeight(248)),
            SizedBox(
              height: getHeight(100),
              width: getWidth(282),
              child: Image.asset("assets/image/Group 191.png"),
            ),
            SizedBox(height: getHeight(259)),
            ButtomContainer(
              text: "Sign in",
              onTap: (){
                Navigator.pushNamed(context, '/sign_in');
              },
            ),
            SizedBox(height: getHeight(10)),
            ButtomContainer(
              text: "Sign up",
              textColor: ConsColor.black,
              color: Colors.white,
              onTap: (){
                Navigator.pushNamed(context, '/sign_up');
              },
            ),
          ],
        ),
      ),
    );
  }
}

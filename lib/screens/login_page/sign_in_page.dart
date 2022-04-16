import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/core/constans/input_decoration.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/widget/buttom_container.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(20), vertical: getHeight(35)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(10)),
            GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: getWidth(25),
                
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            SizedBox(height: getHeight(42)),
            Row(
              children: [
                SizedBox(width: getWidth(113)),
                Text('Welcome ',
                  style: TextStyle(
                    color: ConsColor.black,
                    fontSize: getWidth(24),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: getHeight(65)),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: MyDecoration.decoration("Phone number"),
            ),
            SizedBox(height: getHeight(12)),
            Text("We will send sms your phone number.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: getWidth(10),
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            ButtomContainer(
              text: "Next",
              onTap: (){
                Navigator.pushNamed(context, '/sms_code');
              },
            ),
          ],
        ),
      ),
    );
  }
}

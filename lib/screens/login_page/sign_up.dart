import 'package:egar/core/constans/input_decoration.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/widget/buttom_container.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(getWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(30)),
            GestureDetector(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: getWidth(25),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(height: getHeight(49)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create account",
                  style: TextStyle(
                    fontSize: getWidth(24),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: getHeight(50)),
            TextFormField(
              decoration: MyDecoration.decoration("Full name"),
            ),
            SizedBox(height: getHeight(15)),
            TextFormField(
              decoration: MyDecoration.decoration("Phone number"),
            ),
            SizedBox(height: getHeight(15)),
            TextFormField(
              decoration: MyDecoration.decoration("Password"),
            ),
            Spacer(),
            ButtomContainer(
              text: "Create account",
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
import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/core/constans/text_style.dart';
import 'package:egar/widget/buttom_container.dart';
import 'package:flutter/material.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(getWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                Text(
                  "Chek Out Details",
                  style: TextStyle(
                    fontSize: getWidth(20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.transparent,
                ),
              ],
            ),
            SizedBox(height: getHeight(20)),
            Container(
              height: getHeight(21),
              width: getHeight(139),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                color: ConsColor.amber,
              ),
              child: Center(
                child:
                    Text("Mercedes -Benz", style: MyTextStyle.normal(size: 13)),
              ),
            ),
            SizedBox(height: getHeight(10)),
            Text("E-class 221", style: MyTextStyle.bold(size: 20)),
            SizedBox(height: getWidth(10)),
            Row(
              children: [
                for (var i = 0; i < 5; i++)
                  Icon(
                    Icons.star,
                    size: getWidth(20),
                    color: i < 3 ? ConsColor.amber : Colors.grey,
                  )
              ],
            ),
            for (var i = 0; i < 3; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getHeight(25)),
                  Row(
                    children: [
                      Text("Minimal driver age:", style: MyTextStyle.bold()),
                      SizedBox(width: getWidth(10)),
                      Text("23",
                          style: TextStyle(
                              color: Colors.grey, fontSize: getWidth(16)))
                    ],
                  ),
                ],
              ),
            for (var i = 0; i < 2; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getHeight(25)),
                  Text("Rent Duration", style: MyTextStyle.bold()),
                  SizedBox(height: getHeight(10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("From: 23 dec 2021",
                          style:
                              MyTextStyle.normal(size: 14, color: Colors.grey)),
                      Text("To: 28 dec 2021",
                          style:
                              MyTextStyle.normal(size: 14, color: Colors.grey)),
                      Icon(Icons.edit_rounded,
                          color: Colors.grey, size: getWidth(20))
                    ],
                  ),
                ],
              ),
            SizedBox(height: getHeight(154)),
            Text("Total Cost: 750\$", style: MyTextStyle.bold(size: 18)),
            SizedBox(height: getHeight(26)),
            ButtomContainer(
              text: "Confirm booking",
              onTap: () {
                Navigator.pushNamed(context, '/check');
              },
            ),
            SizedBox(
              height: getHeight(15),
            ),
            ButtomContainer(
              text: "Cancel",
              color: Colors.transparent,
              textColor: Colors.black,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}

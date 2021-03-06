import 'package:animate_do/animate_do.dart';
import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/widget/buttom_container.dart';
import 'package:egar/widget/data_container.dart';
import 'package:egar/widget/model_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterPage extends StatelessWidget {
  FilterPage({Key? key}) : super(key: key);
  
  final RangeValues _indexValue = RangeValues(0, 1000);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(getWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(22)),
            Row(
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
                SizedBox(width: getWidth(120)),
                FadeInDown(
                  child: Text("Filter",
                    style: TextStyle(
                      fontSize: getWidth(20),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getHeight(25)),
            FadeInRight(
              child: Text("Data",
                style: TextStyle(
                  fontSize: getWidth(16),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: getHeight(8)),
            FadeInLeft(
              child: Row(
                children: const [
                  DataContainer(name: "Form",),
                  Spacer(),
                  DataContainer(name: "To",),
                ],
              ),
            ),
            SizedBox(height: getHeight(20)),
            FadeInRight(
              child: Text("Model",
                style: TextStyle(
                  fontSize: getWidth(16),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: getHeight(11)),
            FadeInLeft(child: ModelSizedBox()),
            SizedBox(height: getHeight(20)),
            FadeInRight(
              child: Text("Class",
                style: TextStyle(
                  fontSize: getWidth(16),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: getHeight(11)),
            FadeInLeft(
              child: Row(
                children: [
                  for (var i = 0; i < 3; i++)
                  Container(
                    margin: EdgeInsets.only(right:i == 2 ? 0 : getWidth(19)),
                    height: getHeight(64),
                    width: getWidth(98),
                    padding: EdgeInsets.symmetric(vertical:getHeight(10)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(carClass['img'][i]),
                        Spacer(),
                        Text(carClass['name'][i],
                          style: TextStyle(
                            fontSize: getWidth(10),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getHeight(20)),
            FadeInRight(
              child: Text("Price",
                style: TextStyle(
                  fontSize: getWidth(16),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: getHeight(11)),
            RangeSlider(
              values: _indexValue, 
              onChanged: (v){},
              divisions: 1000,
              max: 1000,
              min: 0,
              activeColor: ConsColor.amber,
            ),
            SizedBox(height: getHeight(20)),
            FadeInRight(
              child: Text("Km",
                style: TextStyle(
                  fontSize: getWidth(16),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: getHeight(11)),
            FadeInLeft(
              child: Row(
                children: [
                  for (var i = 0; i < 4; i++) 
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: getWidth(19),vertical: getHeight(8)),
                    margin: EdgeInsets.only(right: i == 3 ? 0 : getWidth(15)),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Center(
                      child: Text(km[i],
                        style: TextStyle(
                          fontSize: getWidth(12),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getHeight(20)),
            FadeInRight(
              child: Text("Body type",
                style: TextStyle(
                  fontSize: getWidth(16),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: getHeight(11)),
            FadeInLeft(
              child: Row(
                children: [
                  for (var i = 0; i < 4; i++)
                  Container(
                    margin: EdgeInsets.only(right:i == 3 ? 0 : getWidth(19)),
                    height: getHeight(62),
                    width: getWidth(69),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/image/image 10.png"),
                        Text(type[i],
                          style: TextStyle(
                            fontSize: getWidth(10),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            SlideInLeft(
              child: ButtomContainer(
                text: "Apply filter",
                onTap: (){
                  Navigator.pushNamed(context, '/cars',arguments: "Filter");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

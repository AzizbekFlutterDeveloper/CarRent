import 'package:animate_do/animate_do.dart';
import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/core/constans/input_decoration.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/widget/category_widget.dart';
import 'package:egar/widget/model_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(getWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getHeight(50)),
              FadeInDown(
                child: Text("Select your car",
                  style: TextStyle(
                    fontSize: getWidth(20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: getHeight(15)),
              Row(
                children: [
                  FadeInLeft(
                    child: SizedBox(
                      width: getWidth(271),
                      height: getHeight(45),
                      child: TextFormField(
                        decoration: MyDecoration.decoration("Search"),
                      ),
                    ),
                  ),
                  const Spacer(),
                  FadeInRight(
                    child: GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(getWidth(14)),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey)
                        ),
                        child: SvgPicture.asset("assets/icon/Group 50.svg"),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, '/filter');
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: getHeight(10)),
              FadeInLeft(
                child: Text("Car brends",
                  style: TextStyle(
                    fontSize: getWidth(18),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: getHeight(8)),
              FadeInRight(child: ModelSizedBox()),
              for (var i = 0; i < 3; i++) 
              Category(),
            ],
          ),
        ),
      ),
    );
  }
}
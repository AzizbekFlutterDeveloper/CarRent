import 'package:animate_do/animate_do.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/widget/car_container.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CarsPage extends StatelessWidget {
  final String? name;
  final double? height;
  const CarsPage({Key? key, required this.name,this.height}) : super(key: key);
  final bool isBool = true;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top:getWidth(20),left: getWidth(20),right: getWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadeInLeft(
                  child: GestureDetector(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: getWidth(25),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                FadeInDown(
                  child: Text(
                    name.toString(),
                    style: TextStyle(
                      fontSize: getWidth(20),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                FadeInRight(
                  child: GestureDetector(
                    child: Icon(Icons.search, size: getWidth(25)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height:height?? getHeight(717),
              child:isBool == false? Center(child: Column(
                children: [
                  SizedBox(height: getHeight(100)),
                  Lottie.asset("assets/animation/notfound.json"),
                  Text("Not Found",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: getHeight(30),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),):GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: getHeight(200),
                  crossAxisSpacing: getWidth(20),
                  mainAxisSpacing: getHeight(20),
                ),
                itemBuilder: (context, index) {
                  return index.isOdd ? FadeInRight(
                    child: CarContainer(
                      price: "70",
                      img_url:
                          "https://pngimg.com/uploads/mercedes/mercedes_PNG80146.png",
                      onTap: () {
                        Navigator.pushNamed(context, '/car');
                      },
                    ),
                  ):FadeInLeft(
                    child: CarContainer(
                      price: "70",
                      img_url:
                          "https://pngimg.com/uploads/mercedes/mercedes_PNG80146.png",
                      onTap: () {
                        Navigator.pushNamed(context, '/car');
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

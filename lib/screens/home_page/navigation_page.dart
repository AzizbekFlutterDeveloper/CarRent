import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/core/constans/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(
          height: getHeight(47),
          width: double.infinity,
        ),
        FadeInDown(child: Text("My rentals",style: MyTextStyle.bold(size: 20))),
        SizedBox(
          height: getHeight(690),
          child: ListView.builder(padding: EdgeInsets.all(0),itemBuilder: (context, index) {
            return FadeInLeft(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: getWidth(20),vertical: getHeight(10)),
                height: getHeight(349),
                padding: EdgeInsets.all(getWidth(20)),
                width: getWidth(335),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    Text("Tesla Model 3",style: MyTextStyle.bold(size: 16)),
                    SizedBox(
                      height: getHeight(117),
                      width: getWidth(273),
                      child: CachedNetworkImage(imageUrl: "https://www.pngplay.com/wp-content/uploads/13/Tesla-Model-3-PNG-Images-HD.png",fit: BoxFit.cover,),
                    ),
                    for (var i = 0; i < 4; i++) 
                    Column(
                      children: [
                        SizedBox(height: getHeight(8)),
                        Row(
                          children: [
                            SvgPicture.asset("assets/icon/date.svg"),
                            SizedBox(width: getWidth(10)),
                            Text("Date",style: MyTextStyle.bold(size: 14)),
                            Spacer(),
                            Text("22 Apr, 00:00-23:00",style: MyTextStyle.normal(size: 14))
                          ],
                        ),
                        Divider(thickness:   getHeight(1)),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

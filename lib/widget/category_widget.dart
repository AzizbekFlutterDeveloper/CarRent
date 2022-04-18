import 'package:cached_network_image/cached_network_image.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: getHeight(26)),
        Row(
          children: [
            Text(
              "Hot offers",
              style: TextStyle(
                fontSize: getWidth(18),
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            TextButton(
              child: Text("View all",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: getWidth(12),
                  fontWeight: FontWeight.w400,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: getHeight(8)),
        SizedBox(
          height: getHeight(110),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                height: getHeight(105),
                width: getWidth(158),
                padding: EdgeInsets.all(getWidth(14)),
                margin: EdgeInsets.only(right: index == 1 ? 0 : getWidth(19)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: getHeight(66),
                      width: getWidth(130),
                      child: Lottie.asset("assets/animation/23729-yellow-car.json",),
                    ),
                    Spacer(),
                    Text("Land Cruiser 200",
                      style: TextStyle(
                        fontSize: getWidth(12),
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

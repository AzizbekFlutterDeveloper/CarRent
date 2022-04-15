import 'package:cached_network_image/cached_network_image.dart';
import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:flutter/material.dart';

class CarContainer extends StatelessWidget {
  final String? brend;
  final String? model;
  final String? img_url;
  final String? price;
  final Function()? onTap;
  final Function()? savedTap;
  const CarContainer({ Key? key,this.brend,this.img_url,this.model,this.price,this.onTap,this.savedTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: getHeight(200),
        width: getWidth(158),
        padding: EdgeInsets.symmetric(horizontal: getWidth(15),vertical: getHeight(13)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getHeight(18),
              width: getWidth(69),
              margin: EdgeInsets.only(bottom: getHeight(5)),
              decoration: BoxDecoration(
                color: ConsColor.amber,
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              child: Center(
                child: Text(brend ?? "Mercedes-Benz",
                  style: TextStyle(
                    color: ConsColor.black,
                    fontSize: getWidth(8),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Text(model??"E-class 221d",
              style: TextStyle(
                color: ConsColor.black,
                fontSize: getWidth(16),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: getHeight(92),
              width: getHeight(124),
              child: CachedNetworkImage(imageUrl: img_url ?? "https://i.pinimg.com/originals/3f/9a/d4/3f9ad4e2e337e951217651e0e1f61832.gif"),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$$price/ day",
                  style: TextStyle(
                    color: ConsColor.black,
                    fontSize: getWidth(18),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(onTap: savedTap, child: Icon(Icons.bookmark_border, color: Colors.black,size: getWidth(25),))
              ],
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
import 'package:cached_network_image/cached_network_image.dart';
import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:flutter/material.dart';

class ModelSizedBox extends StatelessWidget {
  const ModelSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(68),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: index == 3 ? 0 : getWidth(20)),
              height: getHeight(64),
              width: getWidth(68),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: ConsColor.black),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(brends[index]),
                ),
              ),
            ),
            onTap: (){},
          );
        },
      ),
    );
  }
}

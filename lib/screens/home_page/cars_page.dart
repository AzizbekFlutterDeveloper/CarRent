import 'package:egar/core/constans/size_config.dart';
import 'package:egar/widget/car_container.dart';
import 'package:flutter/material.dart';

class CarsPage extends StatelessWidget {
  final String? name;
  const CarsPage({Key? key, required this.name}) : super(key: key);

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
                  name.toString(),
                  style: TextStyle(
                    fontSize: getWidth(20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                GestureDetector(
                  child: Icon(Icons.search, size: getWidth(25)),
                ),
              ],
            ),
            SizedBox(
              height: getHeight(717),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: getHeight(200),
                  crossAxisSpacing: getWidth(20),
                  mainAxisSpacing: getHeight(20),
                ),
                itemBuilder: (context, index) {
                  return CarContainer(
                    price: "70",
                    img_url:
                        "https://pngimg.com/uploads/mercedes/mercedes_PNG80146.png",
                    onTap: () {
                      Navigator.pushNamed(context, '/car');
                    },
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

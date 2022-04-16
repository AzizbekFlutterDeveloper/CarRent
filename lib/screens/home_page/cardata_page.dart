import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/widget/data_container.dart';
import 'package:flutter/material.dart';

class CarDataPage extends StatefulWidget {
  const CarDataPage({Key? key}) : super(key: key);

  @override
  State<CarDataPage> createState() => _CarDataPageState();
}

class _CarDataPageState extends State<CarDataPage> with SingleTickerProviderStateMixin {
   TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }
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
                GestureDetector(
                  child: Icon(Icons.search, size: getWidth(25)),
                ),
              ],
            ),
            SizedBox(
              height: getHeight(210),
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: getHeight(209),
                    width: getHeight(3),
                    child: Image.network("https://pngimg.com/uploads/mercedes/mercedes_PNG80146.png"),
                  );
                },
              ),
            ),
            SizedBox(
              height: getHeight(60),
              width: getWidth(375),
              child: Center(
                child: TabPageSelector(
                  color: Colors.grey,
                  selectedColor: Colors.black,
                  controller: _controller,
                ),
              ),
            ),
            Container(
              height: getHeight(21),
              width: getHeight(139),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                color: ConsColor.amber,
              ),
              child: Center(
                child: Text("Mercedes -Benz",
                  style: TextStyle(
                    fontSize: getWidth(13),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: getHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("E-class 221",
                  style: TextStyle(
                    fontSize: getWidth(20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text("\$110/ day",
                  style: TextStyle(
                    fontSize: getWidth(20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: getWidth(10)),
            Row(
              children: [
                for (var i = 0; i < 5; i++) 
                Icon(Icons.star,size: getWidth(20),color: i<3? ConsColor.amber:Colors.grey,)
              ],
            ),
            SizedBox(height: getHeight(28)),
            Text("Rent Duration",
              style: TextStyle(
                fontSize: getWidth(16),
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: getHeight(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DataContainer(name: "Form",),
                DataContainer(name: "To",),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

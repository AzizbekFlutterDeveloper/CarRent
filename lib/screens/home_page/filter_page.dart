import 'package:egar/core/constans/size_config.dart';
import 'package:egar/widget/data_container.dart';
import 'package:egar/widget/model_sizedbox.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(getWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getHeight(42)),
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
                Text("Filter",
                  style: TextStyle(
                    fontSize: getWidth(20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: getHeight(31)),
            Text("Data",
              style: TextStyle(
                fontSize: getWidth(16),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: getHeight(8)),
            Row(
              children: const [
                DataContainer(name: "Form",),
                Spacer(),
                DataContainer(name: "To",),
              ],
            ),
            SizedBox(height: getHeight(20)),
            Text("Model",
              style: TextStyle(
                fontSize: getWidth(16),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: getHeight(11)),
            ModelSizedBox(),
          ],
        ),
      ),
    );
  }
}

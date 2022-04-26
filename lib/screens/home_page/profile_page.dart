import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/core/constans/text_style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(getWidth(20)),
        child: Column(
          children: [
            SizedBox(height: getHeight(30),width: double.infinity,),
            Text("Profile",style: MyTextStyle.bold(size: 20)),
            SizedBox(height: getHeight(33)),
            Row(
              children: [
                Badge(
                  borderRadius: BorderRadius.circular(8),
                  badgeColor: Colors.amber,
                  position: BadgePosition.bottomEnd(),
                  badgeContent: Icon(Icons.add,size: getWidth(13)),
                  child: Container(
                    height: getHeight(65),
                    width: getWidth(73),
                    decoration:const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: Color(0xffC4C4C4),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider("https://radiometropolitanaporto.pt/images/pngtree-user-vector-avatar-png-image_1541962.jpg"),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: getWidth(22)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fayzullayev ",style: MyTextStyle.bold()),
                    Text("Muhammadbobur",style: MyTextStyle.bold()),
                    Text("id:256987",style: MyTextStyle.normal(size: 14,color: Colors.grey)),
                  ],
                ),
              ],
            ),
            SizedBox(height: getHeight(50)),
            Row(
              children: [
                Icon(Icons.email_outlined,size: getWidth(25)),
                SizedBox(width: getWidth(10)),
                Text("Messages",style: MyTextStyle.bold()),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined,size: getWidth(17))),
              ],
            ),
            Divider(thickness: getHeight(2),height: getHeight(1),color: Colors.black),
            SizedBox(height: getHeight(20)),
            Row(
              children: [
                Icon(Icons.logout_outlined,size: getWidth(25)),
                SizedBox(width: getWidth(10)),
                Text("Log out",style: MyTextStyle.bold()),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined,size: getWidth(17))),
              ],
            ),
            Divider(thickness: getHeight(2),height: getHeight(1),color: Colors.black),
          ],
        ),
      ),
    );
  }
}
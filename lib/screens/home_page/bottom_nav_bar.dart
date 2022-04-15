import 'package:egar/core/conplament/cons_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarPage extends StatelessWidget {
  const BottomNavBarPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: ConsColor.black,
        unselectedItemColor: ConsColor.black,
        onTap: (v){},
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icon/home.svg"),label: "Home"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icon/navigation.svg"),label: "Trips"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icon/saved.svg"),label: "Saved"),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icon/profile.svg"),label: "Profile"),
        ],
      ),
    );
  }
}
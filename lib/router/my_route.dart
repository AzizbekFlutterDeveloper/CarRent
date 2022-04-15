import 'package:egar/screens/home_page/bottom_nav_bar.dart';
import 'package:egar/screens/login_page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyRoute{
  Route? route(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder:(context) => SplashPage(),);
      case '/home':
        return MaterialPageRoute(builder:(context) => BottomNavBarPage(),);
       
    }
  }
}
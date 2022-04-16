import 'package:egar/screens/home_page/bottom_nav_bar.dart';
import 'package:egar/screens/login_page/sign_in_page.dart';
import 'package:egar/screens/login_page/sign_up.dart';
import 'package:egar/screens/login_page/sms_code_page.dart';
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
      case '/sign_in':
        return MaterialPageRoute(builder:(context) => SignInPage(),);
      case '/sms_code':
        return MaterialPageRoute(builder:(context) => SmsCodePage(),);
      case '/sign_up':
        return MaterialPageRoute(builder:(context) => SignUpPage(),);
       
    }
  }
}
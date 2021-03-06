import 'package:egar/screens/home_page/bottom_nav_bar.dart';
import 'package:egar/screens/home_page/cardata_page.dart';
import 'package:egar/screens/home_page/cars_page.dart';
import 'package:egar/screens/home_page/check_out.dart';
import 'package:egar/screens/home_page/check_page.dart';
import 'package:egar/screens/home_page/filter_page.dart';
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
      case '/filter':
        return MaterialPageRoute(builder:(context) => FilterPage(),);
      case '/cars':
        return MaterialPageRoute(builder:(context) => CarsPage(name: args.toString(),),);
      case '/car':
        return MaterialPageRoute(builder:(context) => CarDataPage(),);
       case '/check_out':
        return MaterialPageRoute(builder:(context) => CheckOutPage(),);
      case '/check':
        return MaterialPageRoute(builder:(context) => CheckPage(),);
       
    }
  }
}
import 'package:dio/dio.dart';
import 'package:egar/service/phone_number_service.dart';
import 'package:get_storage/get_storage.dart';

class SignInUp{
  static Future signUp(String username, String password) async {
    try {
      Response res = await Dio().post(
        'http://localhost:1337/api/auth/local/register',
        data: {
          "email": PhoneService.phoneController.text + "@gmail.com",
          "username": username,
          "password": password,
        },
      );

      return true;
    } catch (e) {
      print("XATO: $e!");
      return false;
    }
  }
}

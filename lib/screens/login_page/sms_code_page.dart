import 'package:egar/core/constans/size_config.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class SmsCodePage extends StatelessWidget {
  SmsCodePage({Key? key}) : super(key: key);

  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

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
            SizedBox(height: getHeight(70)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: double.infinity),
                Text(
                  "Enter verification code",
                  style: TextStyle(
                    fontSize: getWidth(18),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: getHeight(10)),
                SizedBox(
                  width: getWidth(141),
                  height: getHeight(30),
                  child: Center(
                    child: Text(
                      "Enter OPT code send to your mobile number",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: getWidth(12),
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Builder(
                  builder: (context) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            color: Colors.transparent,
                            margin: EdgeInsets.only(
                                top: getHeight(37.0),
                                left: getHeight(52),
                                right: getHeight(52)),
                            child: PinPut(
                              fieldsCount: 4,
                              eachFieldHeight: getHeight(48.12),
                              eachFieldWidth: getWidth(55),
                              onSubmit: (String pin) {
                                print(_pinPutController.text);
                                  Navigator.pushNamed(context, '/home');
                              }
                                ,
                              controller: _pinPutController,
                              submittedFieldDecoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              selectedFieldDecoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              followingFieldDecoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

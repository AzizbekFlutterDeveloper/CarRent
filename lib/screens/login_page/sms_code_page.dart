import 'package:egar/bloc/home_cubit.dart';
import 'package:egar/bloc/home_state.dart';
import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/core/constans/size_config.dart';
import 'package:egar/service/phone_number_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pin_put/pin_put.dart';

class SmsCodePage extends StatelessWidget {
  SmsCodePage({Key? key}) : super(key: key);

  final TextEditingController pinPutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocConsumer<HomeCubit,HomeState>(
          listener: (context, state) {},
          builder: (context,state){
            return myPadding(context);
          },
        ),
      ),
    );
  }

  Padding myPadding(BuildContext context) {
    return Padding(
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
                          ),
                          child: PinPut(
                            fieldsCount: 6,
                            eachFieldHeight: getHeight(48.12),
                            eachFieldWidth: getWidth(55),
                            onSubmit: (String pin) async{
                              PhoneService.codesent(context, pinPutController.text).then((value) {
                                context.read<HomeCubit>().signUp();
                              });
                            },
                            controller: pinPutController,
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
              SizedBox(height: getHeight(8)),
              Row(
                children: [
                  SizedBox(width: getWidth(52)),
                  Text(
                    "The code didn't come?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: getWidth(10),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: getWidth(10),
                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(getWidth(5)),
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                      ),
                      child: Center(
                        child: Text(
                          "Send again",
                          style: TextStyle(
                            color: ConsColor.black,
                            fontSize: getWidth(10),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

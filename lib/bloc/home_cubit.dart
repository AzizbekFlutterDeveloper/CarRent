import 'package:egar/bloc/home_state.dart';
import 'package:egar/service/sign_up_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int isBottomIndex = 0;
  
  void isBottom(v){
    isBottomIndex = v;
    emit(ButtomNavSatate());
  }

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signUp(){
    SignInUp.signUp(userNameController.text, passwordController.text);
    emit(SignUpState());
  }

}
import 'package:egar/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int isBottomIndex = 0;
  
  void isBottom(v){
    isBottomIndex = v;
    emit(ButtomNavSatate());
  }

}
import 'package:egar/bloc/home_cubit.dart';
import 'package:egar/bloc/home_state.dart';
import 'package:egar/core/conplament/cons_color.dart';
import 'package:egar/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarPage extends StatelessWidget {
  const BottomNavBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return scaffold(context);
        },
      ),
    );
  }

  Scaffold scaffold(BuildContext context) {
    int index = context.watch<HomeCubit>().isBottomIndex;
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: ConsColor.black,
        unselectedItemColor: ConsColor.black,
        currentIndex: index,
        onTap: (v) {
          context.read<HomeCubit>().isBottom(v);
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(index != 0
                  ? "assets/icon/home.svg"
                  : "assets/icon/homeW.svg"),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(index != 1
                  ? "assets/icon/navigation.svg"
                  : "assets/icon/navigationW.svg"),
              label: "Trips"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(index != 2
                  ? "assets/icon/saved.svg"
                  : "assets/icon/savedW.svg"),
              label: "Saved"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(index != 3
                  ? "assets/icon/profile.svg"
                  : "assets/icon/profileW.svg"),
              label: "Profile"),
        ],
      ),
    );
  }
}

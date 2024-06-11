import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/layout/news_app/cubit/states.dart';
import 'package:newsapp/layout/news_app/modules/Sports_module/SportsScreen.dart';
import '../modules/Business_module/Business_Screen.dart';
import '../modules/Science_module/Science_Screen.dart';
import '../settings_screen/settings_screen.dart';
class NewsCubit extends Cubit<NewsStates> {
  NewsCubit(): super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);
      int currentIndex= 0;
      List<BottomNavigationBarItem> bottomItem=const[
        BottomNavigationBarItem(
            icon: Icon(
                Icons.business
            ),
          label: 'Business'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Icons.sports
            ),
            label: 'sports'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Icons.science
            ),
            label: 'Science'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Icons.settings
            ),
            label: 'Settings'
        ),
      ];
      void changeBottomNavbar (int index){
          currentIndex=index;
         emit(NewsBottomNavState());
      }
      List<Widget> screen=const [
        BusinessScreen(),
        SportsScreen(),
        ScienceScreen(),
        SettingsScreen(),
  ];
}
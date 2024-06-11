
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/layout/news_app/cubit/cubit.dart';
import 'package:newsapp/layout/news_app/cubit/states.dart';
class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
      create: (BuildContext context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context , state ){},
        builder: (context, state ){
          var cubit = NewsCubit.get(context);
          return  Scaffold(
            appBar: AppBar(
              title: Text('News App',style: TextStyle(
              ),),
            ),
            body: cubit.screen[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
                items: cubit.bottomItem,
              onTap: (index){
                cubit.changeBottomNavbar(index);
              },
              selectedItemColor: Colors.deepOrange,
              elevation: 20,
            ),
          );
        },
      ),
    );
  }
}
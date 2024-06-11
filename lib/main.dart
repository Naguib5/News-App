import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsapp/layout/news_app/news_layout.dart';

void main() {
  runApp(const NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20 ,
            fontWeight:  FontWeight.bold,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark
          ),


        ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed
          ),
      ),
      // darkTheme:ThemeData(
      //   scaffoldBackgroundColor: Colors.black
      // ) ,
      // themeMode: ThemeMode.dark ,
      debugShowCheckedModeBanner: false,
      home:  const NewsLayout(),
    );
  }
}

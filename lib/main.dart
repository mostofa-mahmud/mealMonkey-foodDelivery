import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/src/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2160),
      builder: ()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Meal Monkey Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        routes: {
          "/" : (context)=> const Splash_srcn(),
          "/intro" : (context)=> Intro_page(),
        },
      ),
    );
  }
}
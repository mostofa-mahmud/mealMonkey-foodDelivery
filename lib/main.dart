import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/src/pages/pages.dart';
import 'package:meal_monkey/styles/styles.dart';

import 'constants.dart';

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

            primarySwatch: mainColorSwatch,


            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: EdgeInsets.all(15),
                  minimumSize: const Size(double.infinity, 50)
              ),
            ),

            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  side: BorderSide(color: mainColor),
                  padding: EdgeInsets.all(15),
                  minimumSize: const Size(double.infinity, 50)
              ),
            )


        ),




        routes: {
          kRouteRoot : (context)=> const Splash_srcn(),
          kRouteIntro : (context)=> Intro_page(),
          kRouteStarter : (context)=> StarterPage(),
          kRouteLogin : (context)=> LoginPage(),
        },
      ),
    );
  }
}
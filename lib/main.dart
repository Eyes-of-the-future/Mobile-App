import 'package:connect_ieee/forgetPassword.dart';
import 'package:connect_ieee/signIN.dart';
import 'package:connect_ieee/signUp.dart';
import 'package:connect_ieee/splash.dart';
import 'package:connect_ieee/verfiy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Connect',
          theme: ThemeData(
            primaryColor:Color(0xff008080),

          ),

          home: splash(),

        );
      },

    );
  }
}


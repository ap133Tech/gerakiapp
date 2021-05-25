import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geraki/constants/colors.dart';
import 'package:geraki/screens/welcome_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: primaryColor,
        accentColor: primaryColor,
        fontFamily: 'Quicksand',
        scaffoldBackgroundColor: whiteColor,
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontSize: 22,
                  fontFamily: 'OpenSans',
                  color: headlineColor,
                  fontWeight: FontWeight.bold),
              bodyText1: TextStyle(fontFamily: 'OpenSans', color: whiteColor),
              subtitle1: TextStyle(
                  fontSize: 16, fontFamily: 'OpenSans', color: subtitleColor),
            ),
        textSelectionTheme: TextSelectionThemeData(cursorColor: primaryColor),
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          iconTheme: IconThemeData(color: whiteColor),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:six_cash/util/color_resources.dart';

ThemeData light = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Rubik',
  primaryColor: Color(0xFF3a1078),
  secondaryHeaderColor: Color(0xFFeeeeee),
  highlightColor: Color(0xFF3a1078),
  textTheme: TextTheme(
    titleLarge: TextStyle(color: Color(0xFF3a1078)),
    titleSmall: TextStyle(color: Color(0xFF25282D)),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.white,selectedItemColor: ColorResources.themeLightBackgroundColor),

);
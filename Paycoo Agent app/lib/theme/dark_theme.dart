import 'package:flutter/material.dart';
import 'package:six_cash/util/color_resources.dart';

ThemeData dark = ThemeData(
  fontFamily: 'Roboto',
  primaryColor: Color(0xFFcacaf9),
  secondaryHeaderColor: Color(0xFF3a1078),
  brightness: Brightness.dark,
  textTheme: TextTheme(
    titleLarge: TextStyle(color:Color(0xFFcacaf9)),
    titleSmall: TextStyle(color: Color(0xFF25282D)),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: ColorResources.blackColor,selectedItemColor: ColorResources.themeDarkBackgroundColor),
);

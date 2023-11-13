import 'package:flutter/material.dart';

class MyThemeData{
  static Color primaryColotLigh = Color(0xffB7935F);
  static Color blackColor = Color(0xff242424);
  static ThemeData thmeLight = ThemeData(
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          titleTextStyle:TextStyle(
              color: blackColor,
              fontWeight: FontWeight.bold,
              fontSize: 30
          )
      ),
    textTheme: TextTheme(
      bodySmall : TextStyle(
        color: blackColor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      )
    ),
    iconTheme: IconThemeData(
      color: blackColor,
    ),
    scaffoldBackgroundColor: Colors.transparent,

  );


}
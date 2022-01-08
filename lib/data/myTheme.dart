// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class myTheme {
  //---------------------------light theme ----------------------------------------

  static final myLightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
      ),
    ),
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: Colors.redAccent,
      secondary: Color(0xfffef9eb),
    ),
  );
  //---------------------------Dark theme ----------------------------------------
  static final myDarkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: IconThemeData(
        color: Colors.white, //change your color here
      ),
    ),
    scaffoldBackgroundColor: Color(0xff0f0f0f),
    colorScheme: ColorScheme.dark(
      brightness: Brightness.light,
      primary: Colors.lightBlue,
      secondary: Color(0xfffef9eb),
    ),
  );
}

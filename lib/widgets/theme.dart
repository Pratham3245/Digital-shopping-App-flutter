import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      cardColor: Colors.white,
      canvasColor: creamcolor,
      buttonColor: bluecolor,
      accentColor: bluecolor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      cardColor: Colors.black,
      canvasColor: newdarkcolor,
      buttonColor: newbluecolor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: Theme.of(context).textTheme,
      ));

  static Color creamcolor = Color(0xfff5f5f5);
  static Color newdarkcolor = Vx.gray900;
  static Color newbluecolor = Vx.indigo500;
  static Color bluecolor = Color(0xff403b58);
}

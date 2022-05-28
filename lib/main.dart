import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          textTheme: GoogleFonts.latoTextTheme(),
          // fontFamily: GoogleFonts.blackHanSans().fontFamily
        ),
        initialRoute: "/home",
        routes: {
          "/": (context) => LoginPage(),
          "/home": (context) => Home(),
          "/login": (context) => LoginPage(),
        });
  }
}

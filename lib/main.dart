import 'package:flutter/material.dart';
import 'package:myapplicationone/utils/routs.dart';
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
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRouts.home,
        routes: {
          "/": (context) => LoginPage(),
          MyRouts.home: (context) => Home(),
          MyRouts.login: (context) => LoginPage(),
        });
  }
}

import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: "/home",
        routes: {
          "/": (context) => LoginPage(),
          "/home": (context) => Home(),
          "/login": (context) => LoginPage(),
        });
  }
}

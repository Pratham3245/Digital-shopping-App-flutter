// @dart=2.9
import 'package:flutter/material.dart';
import 'package:myapplicationone/core/store.dart';
import 'package:myapplicationone/pages/cart.dart';
import 'package:myapplicationone/utils/routs.dart';
import 'package:myapplicationone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRouts.login,
        routes: {
          "/login": (context) => LoginPage(),
          MyRouts.home: (context) => Home(),
          MyRouts.detail: (context) => LoginPage(),
          MyRouts.cart: (context) => CartPage(),
        });
  }
}

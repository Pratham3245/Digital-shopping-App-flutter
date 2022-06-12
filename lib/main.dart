// @dart=2.9
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapplicationone/core/store.dart';
import 'package:myapplicationone/pages/cart.dart';
import 'package:myapplicationone/pages/login.dart';
import 'package:myapplicationone/pages/register.dart';
import 'package:myapplicationone/utils/routs.dart';
import 'package:myapplicationone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          "/login": (context) => MyLogin(),
          MyRouts.register: (context) => MyRegister(),
          MyRouts.home: (context) => Home(),
          MyRouts.detail: (context) => MyLogin(),
          MyRouts.cart: (context) => CartPage(),
        });
  }
}

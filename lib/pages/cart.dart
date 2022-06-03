import 'package:flutter/material.dart';
import 'package:myapplicationone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamcolor,
      appBar: AppBar(
        foregroundColor: MyTheme.bluecolor,
        centerTitle: true,
        title: "Cart".text.bold.make(),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

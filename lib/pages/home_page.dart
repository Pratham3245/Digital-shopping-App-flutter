import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final int i = 30;
  final String month = "June";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
      ),
      body: Center(
        child: Container(
          child: Text('In $month there are $i days.'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

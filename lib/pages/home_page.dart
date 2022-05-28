import 'package:flutter/material.dart';
import 'package:myapplicationone/utils/routs.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, MyRouts.login);
              },
              child: Text("Go back to Login Page")),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

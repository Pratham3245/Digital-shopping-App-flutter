import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
          child: Text(
        'Login Page',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
      )),
      drawer: Drawer(),
    );
  }
}

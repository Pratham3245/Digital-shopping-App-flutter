import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
      ),
      body: Center(
        child: Container(
          child:
              ElevatedButton(onPressed: () {}, child: Text("Go to Login Page")),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

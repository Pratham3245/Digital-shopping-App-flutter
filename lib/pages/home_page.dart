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
          child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

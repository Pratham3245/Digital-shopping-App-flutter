import 'package:flutter/material.dart';
import 'package:myapplicationone/utils/routs.dart';
import 'package:myapplicationone/widgets/drawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

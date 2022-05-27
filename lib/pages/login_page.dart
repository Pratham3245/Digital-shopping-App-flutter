import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            'images/login.png',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0),
          Text(
            'Welcome to Login Page',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Username', labelText: 'Username'),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Enter Password', labelText: 'Passsword'),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                    onPressed: () {
                      print('Hii my name is Pratham');
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

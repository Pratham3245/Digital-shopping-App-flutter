import 'package:flutter/material.dart';
import 'package:myapplicationone/utils/routs.dart';
import 'package:myapplicationone/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool change = false;
  final _formkey = GlobalKey<FormState>();

  ToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRouts.home);
      setState(() {
        change = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    FocusNode myFoucusNode = new FocusNode();
    return Scaffold(
      body: Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.network(
                    'https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg?w=740&t=st=1653899797~exp=1653900397~hmac=5c3ac1ec5be5cfa7a54e0d03618ee7f71996abdc13c8d4e642ddbc5cecbdf4df'),
                SizedBox(height: 20.0),
                Text(
                  'Welcome $name',
                  style: TextStyle(
                      fontSize: 28,
                      color: context.accentColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        focusNode: myFoucusNode,
                        decoration: InputDecoration(
                            hintText: 'Enter Username',
                            labelText: 'Username',
                            labelStyle: TextStyle(
                                color: myFoucusNode.hasFocus
                                    ? Colors.blue
                                    : context.accentColor),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: context.accentColor))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username can't be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                            labelText: 'Passsword',
                            labelStyle: TextStyle(
                                color: myFoucusNode.hasFocus
                                    ? Colors.blue
                                    : context.accentColor),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: context.accentColor))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          } else if (value.length < 6) {
                            return "Password length is too Short !!!";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 40.0),
                      Material(
                        color: context.theme.buttonColor,
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                          onTap: () => ToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: 140,
                            alignment: Alignment.center,
                            child: change
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

//types of functons
/*String getfullname(String firstname, String lastname) {
  return firstname + ' ' + lastname;
}

String name(String firstname, String lastname) => firstname + ' ' + lastname;*/

//in void if we do not pass the value than it don't show you the error
void name() {}

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    name();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
          child: TextButton(
        onPressed: () {},
        child: Text('Submit'),
      )),
    );
  }
}

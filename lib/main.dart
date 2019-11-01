import 'package:flutter/material.dart';

import 'package:my_wallet/app/app.dart';
import 'package:my_wallet/app/screens/login.dart';
import 'package:my_wallet/app/screens/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "start": (context) => App(),
        "login": (context) => Login(),
        "register": (context) => Register(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Color.fromRGBO(250, 250, 250, 1.0),
        fontFamily: "Roboto",
        primaryColor: Colors.redAccent[400],
        cursorColor: Colors.redAccent[400]
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Color.fromRGBO(48, 48, 48, 1.0),
        fontFamily: "Roboto",
        primaryColor: Colors.redAccent,
        cursorColor: Colors.redAccent
      ),
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}

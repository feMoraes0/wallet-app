import 'package:flutter/material.dart';
import 'package:my_wallet/app/app.dart';
import 'package:my_wallet/app/login/login.dart';
import 'package:my_wallet/app/register/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "login": (context) => Login(),
        "register": (context) => Register(),
        "home": (context) => App(),
      },
      theme: ThemeData(
        fontFamily: "Nunito",
      ),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

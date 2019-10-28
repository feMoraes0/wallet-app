import 'package:flutter/material.dart';

import 'package:my_wallet/app/app.dart';
import 'package:my_wallet/app/login/login.dart';
import 'package:my_wallet/app/register/register.dart';

import 'package:my_wallet/app/wallet/wallet.dart';

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
        "home": (context) => Wallet(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: "Roboto",
        primaryColor: Colors.redAccent[400]
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Roboto",
        primaryColor: Colors.redAccent
      ),
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}

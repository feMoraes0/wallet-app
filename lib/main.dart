import 'package:flutter/material.dart';
import 'package:my_wallet/app/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      home: App(),
      debugShowCheckedModeBanner: false,
    );
  }
}

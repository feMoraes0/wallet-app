import 'package:flutter/material.dart';

class CustomSnackBar {
  BuildContext context;
  String message;

  CustomSnackBar(this.context, this.message) {
    Scaffold.of(this.context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).primaryColor,
          content: Text(this.message, style: TextStyle(color: Colors.white),),
          action: SnackBarAction(label: "Undo", textColor: Colors.white, onPressed: () {},),
        )
    );
  }
}
import 'package:flutter/material.dart';

class NewCardForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            color: Theme.of(context).backgroundColor,
            child: Column(
              children: <Widget>[
                Text(
                  "New card",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
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
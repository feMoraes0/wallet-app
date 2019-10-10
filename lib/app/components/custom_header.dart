import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String text;

  CustomHeader({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40.0),
      child: Text(
        this.text,
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}

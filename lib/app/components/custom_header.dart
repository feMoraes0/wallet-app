import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String text;

  CustomHeader({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            this.text,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
          ),
          Container(
            width: 25.0,
            height: 25.0,
            child: Icon(
              Icons.person_outline,
              color: Theme.of(context).primaryColor,
              size: 25.0,
            ),
          )
        ],
      ),
    );
  }
}

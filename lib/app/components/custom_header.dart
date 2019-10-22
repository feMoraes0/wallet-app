import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String text;

  CustomHeader({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            this.text,
            style: TextStyle(fontSize: 30.0),
          ),
          SizedBox(
            width: 25.0,
            height: 25.0,
            child: CircularProgressIndicator(
              backgroundColor: Color(0xff8b52f4),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey[200]),
              strokeWidth: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

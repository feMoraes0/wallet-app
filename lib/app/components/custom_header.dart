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
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
          ),
          Container(
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person_outline, color: Colors.white, size: 20.0,),
          )
        ],
      ),
    );
  }
}

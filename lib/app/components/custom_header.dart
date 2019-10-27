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
            style: TextStyle(fontSize: 33.0),
          ),
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.lightBlue[300],
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400],
                  offset: Offset(2.0, 2.0),
                  blurRadius: 2.0
                )
              ]
            ),
            child: Icon(Icons.person_outline, color: Colors.white, size: 22.0,),
          )
        ],
      ),
    );
  }
}

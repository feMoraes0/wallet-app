import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  var active;

  CustomCard({@required this.active});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: (this.active) ? 0.0 : 15.0),
      height: (this.active) ? 200.0 : 170.0,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
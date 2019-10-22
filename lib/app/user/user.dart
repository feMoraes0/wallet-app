import 'package:flutter/material.dart';
import 'package:my_wallet/app/components/custom_header.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CustomHeader(text: "My Settings"),
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(30.0),
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[300],
                    border: Border.all(color: Colors.white, width: 4.0)
                  ),
                  child: Text("FD", style: TextStyle(fontSize: 24.0, color: Colors.white),),
                ),
                Container(
                  child: Text("Fernando de Moraes"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
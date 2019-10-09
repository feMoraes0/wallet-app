import "package:flutter/material.dart";

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 15.0),
            child: Text(
              "My Cards",
              style: TextStyle(
                fontSize: 23.0
              ),
            ),
          ),
          Container(
            width: size.width - 50.0,
            height: 200.0,
            margin: EdgeInsets.only(bottom: 20.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[500],
                  offset: Offset(2.0, 2.0),
                  blurRadius: 5.0,
                ),
              ],
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ],
      ),
    );
  }
}

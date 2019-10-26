import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          padding: const EdgeInsets.only(left: 50.0, top: 80.0, bottom: 80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.black87,
                        size: 45.0,
                      ),
                    ),
                    Text(
                      "Welcome,",
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "sign in to continue",
                      style: TextStyle(fontSize: 30.0, color: Colors.black38),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        hoverColor: Colors.black,
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.black45),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        style: TextStyle(fontSize: 18.0),
                        decoration: InputDecoration(
                          hoverColor: Colors.black,
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.black45),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15.0),
                child: InkWell(
                  hoverColor: Colors.grey,
                  onTap: () {
                    print("hello");
                  },
                  child: Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 20.0),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Get Started",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: size.width,
                margin: const EdgeInsets.only(bottom: 40.0, right: 20.0),
                child: Text(
                  "Don't have an account? Sign Up.",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 16.0
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

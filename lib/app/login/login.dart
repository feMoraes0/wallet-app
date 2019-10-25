import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        color: Colors.deepPurpleAccent,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: size.width,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person_pin, color: Colors.deepPurpleAccent),
                          hintText: "Username",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2.0)
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2.0)
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.vpn_key, color: Colors.deepPurpleAccent),
                          hintText: "Password",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2.0)
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurpleAccent, width: 2.0)
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(5.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                          child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 16.0),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

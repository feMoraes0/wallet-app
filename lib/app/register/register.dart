import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          padding: const EdgeInsets.symmetric(vertical: 80.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 40.0, top: 80.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Someone New!",
                      style: TextStyle(
                        fontSize: 38.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "You are welcome here.",
                      style: TextStyle(fontSize: 25.0, color: Colors.black38),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                margin: const EdgeInsets.only(top: 65.0, bottom: 75.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: size.width - 40.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(180.0),
                          bottomRight: Radius.circular(180.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(3.0, 3.0),
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: size.width - 50.0,
                            margin: const EdgeInsets.only(left: 20.0),
                            padding: const EdgeInsets.symmetric(vertical: 7.0),
                            child: TextFormField(
                              style: TextStyle(fontSize: 18.0),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hoverColor: Colors.black,
                                hintText: "Username",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width - 50.0,
                            margin: const EdgeInsets.only(left: 20.0),
                            padding: const EdgeInsets.symmetric(vertical: 7.0),
                            child: TextFormField(
                              style: TextStyle(fontSize: 18.0),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hoverColor: Colors.black,
                                hintText: "Email",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Container(
                            width: size.width - 50.0,
                            margin: const EdgeInsets.only(left: 20.0),
                            padding: const EdgeInsets.symmetric(vertical: 7.0),
                            child: TextFormField(
                              style: TextStyle(fontSize: 18.0),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hoverColor: Colors.black,
                                  hintText: "Password",
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width - 80,
                      top: 60.0,
                      child: GestureDetector(
                        onTap: () {
                          print("enviando...");
                        },
                        child: Container(
                          height: 65.0,
                          width: 65.0,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(3.0, 3.0),
                                blurRadius: 3.0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 33.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 30.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(3.0, 3.0),
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

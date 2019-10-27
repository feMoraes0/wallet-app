import 'package:flutter/material.dart';

class Login extends StatelessWidget {
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
                      "Hello There!",
                      style: TextStyle(
                        fontSize: 38.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Welcome.",
                      style: TextStyle(fontSize: 25.0, color: Colors.black38),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                margin: const EdgeInsets.only(top: 100.0, bottom: 100.0),
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
                            width: size.width - 20.0,
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
                            width: size.width - 120.0,
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
                      top: 25.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "home");
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "register");
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 30.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
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
                        "Register",
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

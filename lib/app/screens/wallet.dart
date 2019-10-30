import "package:flutter/material.dart";
import 'package:my_wallet/app/components/custom_header.dart';
import 'package:my_wallet/app/components/custom_card.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  int page = 1;

  FocusNode valueFocus = new FocusNode();

  @override
  void dispose() {
    valueFocus.dispose();
    super.dispose();
  }

  changePage(newPage) {
    this.setState(() {
      this.page = newPage;
    });
  }

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[],
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                'Save',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  showBottom(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.only(right: 20.0, left: 20.0),
        width: MediaQuery.of(context).size.width,
        height: 285,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.keyboard_arrow_down,
                size: 35.0,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Title",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: TextField(
                      autofocus: true,
                      onEditingComplete: () {
                        FocusScope.of(context).requestFocus(valueFocus);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hoverColor: Theme.of(context).primaryColor,
                        contentPadding: const EdgeInsets.all(15.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[300],
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15.0, bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Value",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: TextField(
                      focusNode: this.valueFocus,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        hoverColor: Theme.of(context).primaryColor,
                        contentPadding: const EdgeInsets.all(15.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[300],
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Builder(
        builder: (context) => Stack(
          children: <Widget>[
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomHeader(text: "My Cards"),
                  Container(
                    height: 215,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: PageView(
                      controller: PageController(
                        initialPage: this.page,
                        viewportFraction: 0.90,
                      ),
                      scrollDirection: Axis.horizontal,
                      onPageChanged: this.changePage,
                      children: <Widget>[
                        CustomCard(active: (this.page == 0) ? true : false),
                        CustomCard(active: (this.page == 1) ? true : false),
                        CustomCard(active: (this.page == 2) ? true : false),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: size.width,
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        left: 25.0,
                        right: 25.0,
                      ),
                      child: ListView(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black26,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            child: ListTile(
                              title: Text(
                                "Test",
                                style: TextStyle(fontSize: 18.0),
                              ),
                              subtitle: Text(
                                "00/00/0000",
                                style: TextStyle(fontSize: 14.0),
                              ),
                              trailing: Text(
                                "\$ 100.0",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.black26, width: 2.0),
                              ),
                            ),
                            child: ListTile(
                              title: Text("Test 2",
                                  style: TextStyle(fontSize: 18.0)),
                              subtitle: Text(
                                "00/00/0000",
                                style: TextStyle(fontSize: 14.0),
                              ),
                              trailing: Text(
                                "\$ 100.0",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 15.0,
              right: 10.0,
              child: FloatingActionButton.extended(
                onPressed: () {
                  print("adding new...");
                  this.showBottom(context);
                },
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 21.0,
                ),
                label: Text(
                  "New",
                  style: TextStyle(fontSize: 17.0, color: Colors.white),
                ),
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

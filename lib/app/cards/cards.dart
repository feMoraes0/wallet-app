import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:my_wallet/app/user/user.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  int page = 0;
  PageController _pageController = PageController(initialPage: 0);

  changePage(int index) {
    this.setState(() {
      this.page = index;
    });
    this._pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Wallet(),
          User(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: Container(
          height: 55.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: () {
                  this.changePage(0);
                },
                child: Container(
                  width: size.width / 2 - 35,
                  child: IconButton(
                    icon: Icon(Icons.account_balance_wallet, size: 26.0),
                    onPressed: null,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  this.changePage(1);
                },
                child: Container(
                  width: size.width / 2 - 35,
                  child: IconButton(
                    icon: Icon(Icons.person_outline, size: 26.0),
                    onPressed: null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        disabledElevation: 2.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  int page = 1;

  changePage(newPage) {
    this.setState(() {
      this.page = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40.0),
            child: Text(
              "My Cards",
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Expanded(
            child: PageView(
              controller: PageController(initialPage: this.page, viewportFraction: 0.85),
              scrollDirection: Axis.horizontal,
              onPageChanged: this.changePage,
              children: <Widget>[
                PageCard(active: (this.page == 0) ? true : false),
                PageCard(active: (this.page == 1) ? true : false),
                PageCard(active: (this.page == 2) ? true : false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageCard extends StatelessWidget {
  bool active;
  EdgeInsets _padding;

  PageCard({@required this.active});

  @override
  Widget build(BuildContext context) {
    if (this.active) {
      this._padding = EdgeInsets.symmetric(horizontal: 0.0);
    } else {
      this._padding = EdgeInsets.symmetric(horizontal: 35.0);
    }

    return SafeArea(
      child: Container(
        child: Column(
          children: <Widget>[
            Card(active: this.active),
            Padding(
              padding: this._padding,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 25.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(2.0, 2.0),
                      blurRadius: 2.0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 23.0, vertical: 8.0),
                      decoration: BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "Transactions",
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 23.0, vertical: 8.0),
                      child: Text(
                        "€ 1.000",
                        style: TextStyle(fontSize: 18.0, color: Colors.green),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: this._padding,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5.0),
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.lightGreen,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Shopping",
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                      Text(
                                        "10/10/2019",
                                        style: TextStyle(fontSize: 13.0, color: Colors.grey[400]),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "€ 100.0",
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  bool active = false;

  Card({@required this.active});

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

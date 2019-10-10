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
    this.setState(() { this.page = index; });
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
  int page = 0;

  changePage(newPage) {
    this.setState(() {
      this.page = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageController(viewportFraction: 0.85),
      scrollDirection: Axis.horizontal,
      onPageChanged: this.changePage,
      children: <Widget>[
        PageCard(active: (this.page == 0) ?  true : false),
        PageCard(active: (this.page == 1) ?  true : false),
        PageCard(active: (this.page == 2) ?  true : false),
        Container(color: Colors.redAccent,),
      ],
    );
  }
}


class PageCard extends StatelessWidget {

  bool active;

  PageCard({@required this.active});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Card(active: this.active),
              ],
            )
          ),
        ),
    );
  }
}

class Card extends StatelessWidget {

  bool active;

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


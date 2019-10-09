import "package:flutter/material.dart";
import 'package:my_wallet/app/cards/cards.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int page = 0;
  PageController _pageController = PageController();

  updatePage(page) {
    this.setState(() {
      this.page = page;
    });
    this._pageController.animateToPage(page, duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: <Widget>[
            Cards(),
            Container(
              color: Colors.grey[100],
              child: Icon(Icons.settings),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          children: <Widget>[
            InkWell(
              highlightColor: Colors.redAccent,
              onTap: () { this.updatePage(0); },
              child: Container(
                width: size.width / 2,
                child: IconButton(
                  icon: Icon(Icons.credit_card),
                  onPressed: null,
                ),
              ),
            ),
            InkWell(
              highlightColor: Colors.redAccent,
              onTap: () { this.updatePage(1); },
              child: Container(
                width: size.width / 2,
                child: IconButton(
                  icon: Icon(Icons.settings, color: (this.page == 1 ? Colors.black : Colors.grey),),
                  onPressed: null,
                ),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: InkWell(
        child: FloatingActionButton(
          child: Icon(Icons.add, size: 26.0,),
          onPressed: null,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

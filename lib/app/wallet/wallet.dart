import "package:flutter/material.dart";
import 'package:my_wallet/app/components/custom_header.dart';
import 'package:my_wallet/app/wallet/custom_card.dart';


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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
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
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 1.0
                          ),
                        ),
                      ),
                      child: ListTile(
                        title: Text("Test", style: TextStyle(fontSize: 18.0)),
                        subtitle: Text("00/00/0000", style: TextStyle(fontSize: 14.0),),
                        trailing: Text("\$ 100.0", style: TextStyle(fontSize: 18.0, color: Colors.green,),),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 1.0
                          ),
                        ),
                      ),
                      child: ListTile(
                        title: Text("Test 2", style: TextStyle(fontSize: 18.0)),
                        subtitle: Text("00/00/0000", style: TextStyle(fontSize: 14.0),),
                        trailing: Text("\$ 100.0", style: TextStyle(fontSize: 18.0, color: Theme.of(context).primaryColor,),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("adding new...");
        },
        icon: Icon(
          Icons.add,
          color: Colors.white,
          size: 23.0,
        ),
        label: Text(
          "New",
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

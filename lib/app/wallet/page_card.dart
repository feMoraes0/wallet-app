import 'package:flutter/material.dart';
import 'package:my_wallet/app/wallet/custom_card.dart';

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
            CustomCard(active: this.active),
            Padding(
              padding: this._padding,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 25.0),
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
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                      decoration: BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "Transactions",
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 8.0, 15.0, 8.0),
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
                        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
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
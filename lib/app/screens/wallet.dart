import 'dart:convert';

import "package:flutter/material.dart";
import 'package:my_wallet/app/components/custom_header.dart';
import 'package:my_wallet/app/components/custom_card.dart';

import 'package:http/http.dart' as http;
import 'package:my_wallet/app/models/User.dart';

class Wallet extends StatefulWidget {
  final User user;
  Wallet(this.user);

  @override
  _WalletState createState() => _WalletState(this.user);
}

class _WalletState extends State<Wallet> {
  var cards;
  final User user;
  FocusNode valueFocus = new FocusNode();

  _WalletState(this.user) {
    this.getCards(user.id, user.token);
  }

  void getCards(int id, String baerer) async {
    await http.get(
      "https://mywallet-api.herokuapp.com/user/$id/cards",
      headers: {"authorization": baerer},
    ).then((response) {
      this.setState(() {
        this.cards = json.decode(response.body);
      });
      print(this.cards);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: ListView.builder(
      itemCount: this.cards["rows"].length + 2,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Container(
            height: 140,
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
            child: Card(
              icon: Icons.person_outline,
              label: "Fernando de Moraes",
            ),
          );
        }

        if (index == this.cards["rows"].length + 1) {
          return Container(
            height: 220,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 2.0,
                  offset: Offset(0, -3),
                )
              ],
            ),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blueAccent,
                    Colors.lightBlueAccent,
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.add,
                    size: 30.0,
                    color: Theme.of(context).backgroundColor,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "ADD NEW CARD",
                        style: TextStyle(
                            fontSize: 23.0,
                            color: Theme.of(context).backgroundColor),
                      ),
                      Text(
                        "Cards can be for an especific\nevent or all life as credit or debit",
                        maxLines: 5,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Theme.of(context).backgroundColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }

        return CardDivision(
          shadow: true,
        );
      },
    ));
  }

  @override
  void dispose() {
    valueFocus.dispose();
    super.dispose();
  }
}

class CardDivision extends StatelessWidget {
  final bool shadow;

  CardDivision({@required this.shadow});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          (this.shadow)
              ? BoxShadow(
                  color: Colors.black45,
                  blurRadius: 2.0,
                  offset: Offset(0, -3),
                )
              : BoxShadow(),
        ],
      ),
      child: Card(
        icon: Icons.account_balance_wallet,
        label: "**** **** **** 0000",
      ),
    );
  }
}

class Card extends StatelessWidget {
  final IconData icon;
  final String label;

  Card({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blueAccent,
            Colors.lightBlueAccent,
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            this.icon,
            size: 25.0,
            color: Theme.of(context).backgroundColor,
          ),
          Text(
            this.label,
            style: TextStyle(
                fontSize: 23.0, color: Theme.of(context).backgroundColor),
          ),
        ],
      ),
    );
  }
}

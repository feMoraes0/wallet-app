import 'dart:convert';

import "package:flutter/material.dart";

import 'package:http/http.dart' as http;
import 'package:my_wallet/app/models/User.dart';
import 'package:my_wallet/app/screens/new_card_form.dart';

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
    return Scaffold(
      body: (cards == null)
          ? Loading()
          : ListView.builder(
              itemCount: this.cards["rows"].length + 2,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return CardDivision(
                    shadow: false,
                    icon: Icons.person_outline,
                    label: "Fernando de Moraes",
                  );
                }

                if (index == this.cards["rows"].length + 1) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewCardForm(),
                        ),
                      );
                    },
                    child: NewCard(),
                  );
                }

                var tempCard = this.cards["rows"][index - 1];

                return CardDivision(
                  shadow: true,
                  icon: (tempCard["type"] == "credit")
                      ? Icons.account_balance_wallet
                      : Icons.event_note,
                  label: (tempCard["type"] == "credit")
                      ? "**** **** **** " + tempCard["label"]
                      : tempCard["label"],
                );
              },
            ),
    );
  }

  @override
  void dispose() {
    valueFocus.dispose();
    super.dispose();
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      color: Theme.of(context).backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(
            backgroundColor: Theme.of(context).backgroundColor,
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).primaryColor,
            ),
            strokeWidth: 2.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Text(
              "Loading cards...",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardDivision extends StatelessWidget {
  final bool shadow;
  final IconData icon;
  final String label;

  CardDivision({
    @required this.shadow,
    @required this.icon,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      decoration: (this.shadow)
          ? BoxDecoration(
              color: Theme.of(context).backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 2.0,
                  offset: Offset(0, -3),
                ),
              ],
            )
          : BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
      child: Card(icon: this.icon, label: this.label),
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

class NewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      fontSize: 23.0, color: Theme.of(context).backgroundColor),
                ),
                Text(
                  "Cards can be for an especific\nevent or all life as credit or debit",
                  maxLines: 5,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 16.0, color: Theme.of(context).backgroundColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

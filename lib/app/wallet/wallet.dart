import "package:flutter/material.dart";
import 'package:my_wallet/app/components/custom_header.dart';
import 'package:my_wallet/app/wallet/page_card.dart';

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
          CustomHeader(text: "My Cards"),
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





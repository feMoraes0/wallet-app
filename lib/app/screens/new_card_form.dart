import 'package:flutter/material.dart';

class NewCardForm extends StatefulWidget {
  @override
  _NewCardFormState createState() => _NewCardFormState();
}

class _NewCardFormState extends State<NewCardForm> {
  String _radioCoin = "dolar";
  String _radioType = "credit";
  final _labelController = TextEditingController();
  final FocusNode _labelFocus = FocusNode();
  final _valueController = TextEditingController();
  final FocusNode _valueFocus = FocusNode();

  var colors = [
    {
      'name': 'orange',
      'first_color': 'FF5722',
      'second_color': 'FFEB3B',
    },
    {
      'name': 'green',
      'first_color': '69F0AE',
      'second_color': 'FFEB3B',
    },
    {
      'name': 'blue',
      'first_color': '448AFF',
      'second_color': '69F0AE',
    },
    {
      'name': 'ocean',
      'first_color': 'B2FF59',
      'second_color': '2196F3',
    },
    {
      'name': 'red',
      'first_color': 'FF5252',
      'second_color': 'E040FB',
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Builder(
        builder: (context) => SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: Theme.of(context).backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "New card",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Type",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  this._labelFocus.unfocus();
                                  setState(() {
                                    this._radioType = "credit";
                                    this._labelController.value =
                                        TextEditingValue(text: "");
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      Radio(
                                        value: "credit",
                                        groupValue: _radioType,
                                        onChanged: (value) {
                                          this._labelFocus.unfocus();
                                          setState(() {
                                            this._radioType = value;
                                            this._labelController.value =
                                                TextEditingValue(text: "");
                                          });
                                        },
                                      ),
                                      Text(
                                        "Credit",
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  this._labelFocus.unfocus();
                                  setState(() {
                                    this._radioType = "event";
                                    this._labelController.value =
                                        TextEditingValue(
                                      text: ""
                                    );
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      Radio(
                                        value: "event",
                                        groupValue: _radioType,
                                        onChanged: (value) {
                                          this._labelFocus.unfocus();
                                          setState(() {
                                            this._radioType = value;
                                            this._labelController.value =
                                                TextEditingValue(text: "");
                                          });
                                        },
                                      ),
                                      Text(
                                        "Event",
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Coin",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    this._radioCoin = "dolar";
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      Radio(
                                        value: "dolar",
                                        groupValue: _radioCoin,
                                        onChanged: (value) {
                                          setState(() {
                                            this._radioCoin = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Dolar",
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    this._radioCoin = "euro";
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      Radio(
                                        value: "euro",
                                        groupValue: _radioCoin,
                                        onChanged: (value) {
                                          setState(() {
                                            this._radioCoin = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Euro",
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    this._radioCoin = "pound";
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    children: <Widget>[
                                      Radio(
                                        value: "pound",
                                        groupValue: _radioCoin,
                                        onChanged: (value) {
                                          setState(() {
                                            this._radioCoin = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        "Pound",
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Label",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15.0),
                          child: TextField(
                            focusNode: this._labelFocus,
                            maxLength: (this._radioType == "credit" ? 4 : 19),
                            controller: this._labelController,
                            keyboardType: (this._radioType == "credit")
                                ? TextInputType.number
                                : TextInputType.emailAddress,
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
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Initial Value",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15.0),
                          child: TextField(
                            focusNode: this._valueFocus,
                            controller: this._valueController,
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
                  Container(
                    margin: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Card Color",
                              style: TextStyle(fontSize: 18.0),
                            ),
                            Text(
                              "Choose your card color.",
                              style: TextStyle(fontSize: 16.0),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF69F0AE),
                                    Color(0xFFFFEB3B)
                                  ])),
                          height: 45,
                          width: 45,
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: Container(
                      width: size.width,
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
          ),
        ),
      ),
    );
  }
}

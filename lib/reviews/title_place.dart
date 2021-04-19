import 'package:flutter/material.dart';
import 'stars.dart';

class TitlePlace extends StatelessWidget {
  final String namePlace;
  final int punctuation;

  TitlePlace(this.namePlace, this.punctuation);


  @override
  Widget build(BuildContext context) {
    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: "Lato",
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          )
        ),
        Stars(punctuation, 323.0, 3.0, 25.0),
      ],
    );
    return titleStars;
  }
}
import 'package:flutter/material.dart';
import 'cardImage.dart';

class CardImageList extends StatelessWidget {
  CardImageList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/place_one.jpg"),
          CardImage("assets/img/place_two.jpg"),
          CardImage("assets/img/place_three.jpg"),
          CardImage("assets/img/place_four.jpg")
        ],
      ),
    );
  }
}
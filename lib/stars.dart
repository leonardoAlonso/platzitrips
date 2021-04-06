import 'package:flutter/material.dart';

class Stars extends StatelessWidget {

  final int numberStars;

  Stars(this.numberStars);

  @override
  Widget build(BuildContext context) {
   List <Widget> rowStars = [];
    List <Widget> rowStarsBordered = [];
    List(numberStars).forEach((i) => rowStars.add(star(true)));
    List(5 - numberStars).forEach((i) => rowStarsBordered.add(star(false)));
    List<Widget> finalStars = []..addAll(rowStars)..addAll(rowStarsBordered);
    return new Row(children: finalStars);
  }

  Widget star(bool withBorder) {
    return Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        withBorder ? Icons.star : Icons.star_border,
        color: Color(0xFFf2c611),
      )
    );
  }
}
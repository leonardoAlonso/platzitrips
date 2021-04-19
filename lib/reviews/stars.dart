import 'package:flutter/material.dart';

class Stars extends StatelessWidget {

  final int numberStars;
  final double top;
  final double rigth;
  final double size;

  Stars(this.numberStars, this.top, this.rigth, this.size);

  @override
  Widget build(BuildContext context) {
   List <Widget> rowStars = [];
    List <Widget> rowStarsBordered = [];
    List(numberStars).forEach((i) => rowStars.add(star(true, top, rigth)));
    List(5 - numberStars).forEach((i) => rowStarsBordered.add(star(false, top, rigth)));
    List<Widget> finalStars = []..addAll(rowStars)..addAll(rowStarsBordered);
    return Container(
        margin: EdgeInsets.only(left: 2),
        child: Row(children: finalStars)
      );
  }

  Widget star(bool withBorder, top, rigth) {
    return Container(
      margin: EdgeInsets.only(top: top, right: rigth),
      child: Icon(
        withBorder ? Icons.star : Icons.star_border,
        color: Color(0xFFf2c611),
        size: size,
      )
    );
  }
}
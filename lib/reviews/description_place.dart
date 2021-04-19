import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String descriptionPlace;

  DescriptionPlace(this.descriptionPlace);


  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 20.0,
        left: 20.0
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
          color: Color(0xFF56575a)
        ),
      ),
    );
    return description;
  }
}
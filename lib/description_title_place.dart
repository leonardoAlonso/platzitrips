import 'package:flutter/material.dart';
import 'description_place.dart';
import 'title_place.dart';

class DescriptionTitlePlace extends StatelessWidget {
  final String namePlace;
  final int punctuation;
  final String descriptionPlace;

  DescriptionTitlePlace(this.namePlace, this.punctuation, this.descriptionPlace);


  @override
  Widget build(BuildContext context) {
    final placeDescription = Column(
      children: <Widget>[
        TitlePlace(namePlace, punctuation),
        DescriptionPlace(descriptionPlace)
      ],
    );
    return placeDescription;
  }
}
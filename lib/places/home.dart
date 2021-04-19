import 'package:flutter/material.dart';
import '../reviews/description_title_place.dart';
import '../reviews/review_list.dart';
import '../places_cards/header_appbar.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionTitlePlace(
              "Bahamas",
              4,
              "Consequat anim nulla ad pariatur ea adipisicing ad proident laborum. Id amet veniam ullamco aute in cillum sit labore eu dolor ullamco excepteur. Commodo pariatur velit aute non ut culpa commodo exercitation."
            ),
            ReviewList()
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }
}
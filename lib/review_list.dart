import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {

  String pathImage = "assets/img/descarga.jfif";
  String name = "Varuna Yasas";
  String details = "1 Review 5 photos";
  String coments = "Minim exercitation sint deserunt sunt occaecat non qui dolore reprehenderit.";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Review(pathImage, name, details, coments),
        new Review(pathImage, name, details, coments),
        new Review(pathImage, name, details, coments),
        new Review(pathImage, name, details, coments)
      ],
    );
  }

}
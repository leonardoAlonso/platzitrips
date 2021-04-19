import 'package:flutter/material.dart';
import 'package:platizitrips/reviews/photo.dart';
import 'stars.dart';

class Review extends StatelessWidget {

  final String pathImage;
  final String name;
  final String details;
  final String coments;

  Review(this.pathImage, this.name, this.details, this.coments);

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      // width: 260.0,
      margin: EdgeInsets.only(
        top: 5.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        coments,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
      )
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 20.0
          ),
          child: Text(
            details,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Color(0xFFa3a5a7)
            ),
            textAlign: TextAlign.left
          )
        ),
        Stars(5, 0.0, 0.0, 15.0)
      ],
    );

    final userName = Container(
        margin: EdgeInsets.only(
          left: 20.0,
        ),
        child: Text(
          name,
          style: TextStyle(
            fontSize: 17.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.w900
          ),
          textAlign: TextAlign.left,
        )
      );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    

    return Row(
      children: <Widget>[
        Photo(pathImage, 20.0, 20.0),
        Expanded(
          child: userDetails
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:platizitrips/reviews/photo.dart';


class ProfileData extends StatelessWidget {
  final String username;
  final String email;
  final String imagePath;
  const ProfileData(this.username, this.email, this.imagePath);

  @override
  Widget build(BuildContext context) {

    final userName = Container(
        margin: EdgeInsets.only(
          left: 20.0,
        ),
        child: Text(
          username,
          style: TextStyle(
            fontSize: 21.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
            color: Colors.white
          ),
          textAlign: TextAlign.left,
        )
      );

      final userEmail = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 20.0
          ),
          child: Text(
            email,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Colors.white38
            ),
            textAlign: TextAlign.left
          )
        ),
      ],
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userEmail
      ],
    );

    return Row(
      children: <Widget>[
        Photo(imagePath, 20.0, 0),
        Expanded(
          child: userDetails
        )
      ],
    );
  }
}
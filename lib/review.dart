import 'package:flutter/material.dart';
import 'stars.dart';

class Review extends StatelessWidget {

  String pathImage = "assets/img/descarga.jfif";
  String name = "Varuna Yasas";
  String details = "1 Review 5 photos";
  String coments = "Minim exercitation sint deserunt sunt occaecat non qui dolore reprehenderit.";

  Review(this.pathImage, this.name, this.details, this.coments);

  @override
  Widget build(BuildContext context) {

    final userComments = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        )
      )
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        )
      )
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 2.0
      ),
      child: Row(
        children: <Widget>[
          Text(
            name,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 17.0,
            )
          ),
          new Stars(5)
        ],
      )
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComments
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}
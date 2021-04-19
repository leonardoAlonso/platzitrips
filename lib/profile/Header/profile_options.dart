import 'package:flutter/material.dart';
import 'circle_button.dart';
import '../../test_widget.dart';

class ProfileOptions extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return Center(
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          right: 20.0
        ),
        child: Row(
          children: <Widget>[
            CircleButton("btn-not", true, Icons.turned_in_not, 20.0, Color.fromRGBO(255, 255, 255, 1), '/second'),
            CircleButton("btn-giftcard", true, Icons.card_giftcard, 20.0, Color.fromRGBO(255, 255, 255, 1), '/second'),
            CircleButton("btn-add", false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1), '/second'),
            CircleButton("btn-mail", true, Icons.mail_outline, 20.0, Color.fromRGBO(255, 255, 255, 1), '/second'),
            CircleButton("btn-person", true, Icons.person, 20.0, Color.fromRGBO(255, 255, 255, 1), '/second')
          ],
        )
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:platizitrips/profile/Header/profile_container.dart';

class HeaderGradient extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 380.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584DC1),
          ],
          begin: FractionalOffset(0.2, 0.4),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.7],
          tileMode: TileMode.clamp
        )
      ),
      child: ProfileContainer("Leo Alonso", "leonardoalonsososa@gmail.com", "assets/img/descarga.jfif"),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}
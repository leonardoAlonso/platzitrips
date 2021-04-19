import 'package:flutter/material.dart';
import 'package:platizitrips/profile/Header/profile_options.dart';
import 'profile_image.dart';

class ProfileContainer extends StatelessWidget {

  final String username;
  final String email;
  final String profilePic;

  const ProfileContainer(this.username, this.email, this.profilePic);
  @override
  Widget build(BuildContext context) {

    final headerText = Text (
        "Profile",
        style: TextStyle(
          color:Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
        ),
    );

    return Container(
          margin: EdgeInsets.only(
          top: 40.0,
          left: 25.0
        ),
        child: Column(
          children: <Widget>[
            headerText,
            ProfileData(username, email, profilePic),
            ProfileOptions()
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      );
  }
}
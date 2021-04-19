import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  final String path;
  final double top;
  final double left;
  const Photo(this.path, this.top, this.left);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: top,
        left: left
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(path)
        )
      ),
    );
  }
}
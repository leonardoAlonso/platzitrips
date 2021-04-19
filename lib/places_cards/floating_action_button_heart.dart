import 'package:flutter/material.dart';

class FloattingActionButtonHeart extends StatefulWidget {
  FloattingActionButtonHeart({Key key}) : super(key: key);

  @override
  _FloattingActionButtonHeartState createState() => _FloattingActionButtonHeartState();
}

class _FloattingActionButtonHeartState extends State<FloattingActionButtonHeart> {
  bool _pressed = false;

  void onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Agregaste a tus favoritos"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        this._pressed ? Icons.favorite : Icons.favorite_border
      )
    );
  }
}
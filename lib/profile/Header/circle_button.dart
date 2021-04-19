import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final name;
  final bool mini;
  final icon;
  final double iconSize;
  final color;
  final route;

  CircleButton(this.name, this.mini, this.icon, this.iconSize, this.color, this.route);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FloatingActionButton(
        backgroundColor: color,
        mini: mini,
        heroTag: name,
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Icon(
          icon,
          size: iconSize,
          color: Color(0xFF4268D3),
        ),
      )
    );
  }

}

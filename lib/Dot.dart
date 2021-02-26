import "package:flutter/material.dart";

Color activeColor = Color.fromRGBO(158, 158, 158, 1);
Color inActiveColor = Color.fromRGBO(216, 216, 216, 1);

class Dot extends StatelessWidget {
  bool isActive;
  Dot({this.isActive});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.circle,
      size: 10.0,
      color: this.isActive ? activeColor : inActiveColor,
    );
  }
}

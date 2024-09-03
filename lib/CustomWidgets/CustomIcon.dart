import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
   double size;

  final Color color;
  var icon;

  CustomIcon(
      {this.size = 24.0,
      this.color = Colors.black,
      this.icon = Icons.arrow_back_ios});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(14.0),
      child: Icon(size: size, icon),
    );
  }
}

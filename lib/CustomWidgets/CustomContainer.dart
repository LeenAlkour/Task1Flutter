import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double radius;
  final double width;
  final double hight;
  final double padding;
  final Widget child;

   CustomContainer({super.key, this.radius = 10, required this.child,  required this.padding,  this.width=double.infinity, required this.hight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: padding,right: padding*2,top: padding*1.5,bottom: padding*2),
      child: Container(
        decoration: BoxDecoration(border:Border.all( color: Colors.black),borderRadius: BorderRadius.circular(radius)),
        child: child,
      ),
    );
  }
}

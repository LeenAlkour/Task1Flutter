import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextButtons extends StatelessWidget {
  String title;
  double size;
  double padding;
  void Function()? onPressed;
CustomTextButtons({required this.onPressed, required this.title,this.size=18,this.padding=20});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(title,style: TextStyle(fontSize:size),));
  }
}

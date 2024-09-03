import 'package:flutter/cupertino.dart';

class CustomTitle extends StatelessWidget {
  String title;
  double size;
  double padding;
  CustomTitle({ required this.title,this.size=0.05,this.padding=30});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;


    return Padding(
      padding:  EdgeInsets.only(left: padding),
      child: Text(title,style: TextStyle(fontSize:width*size),),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_project/constant/app_constant.dart';

class Rightbar extends StatelessWidget {
  final double barwidth;
  const Rightbar({Key? key, required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.start,
     children:[
      Container(
        height: 25,
        width: barwidth,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        color: accentHexColor,),
      )
    


     ]
    );
    
  }
}
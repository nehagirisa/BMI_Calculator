import 'package:flutter/material.dart';
import 'package:flutter_project/constant/app_constant.dart';

class Leftbar extends StatelessWidget {
  final double barwidth;
  const Leftbar({Key? key, required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.end,
     children:[
      Container(
        height: 25,
        width: barwidth,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        color: accentHexColor,),
      )
    


     ]
    );
    
  }
}
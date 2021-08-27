import 'package:flutter/material.dart';
import 'package:flutter_project/screens/homepage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     title: "BIM Calculator",
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: Colors.yellow,
       visualDensity: VisualDensity.adaptivePlatformDensity
     ),
     home: HomePage(),
    );
  }
}
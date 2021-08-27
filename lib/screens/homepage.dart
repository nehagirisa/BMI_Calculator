import 'package:flutter/material.dart';
import 'package:flutter_project/constant/app_constant.dart';
import 'package:flutter_project/widget/left_bar.dart';
import 'package:flutter_project/widget/right_bar.dart';
import "package:velocity_x/velocity_x.dart";

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _widthController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "BMI Calculator".text.color(accentHexColor).semiBold.make(),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: accentHexColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height",
                        hintStyle: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                          color: Colors.white.withOpacity(0.8),
                        )),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _widthController,
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: accentHexColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight",
                        hintStyle: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(0.8),
                        )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_widthController.text);
                setState(() {
                  _bmiResult = _w / (_h * _h);
                  if(_bmiResult > 25){
                    _textResult = "You are over weight";
                  }else if(_bmiResult >= 18.5 && _bmiResult <= 25){
                    _textResult = "You have normal weight";
                  }else{
                    _textResult = "You are uder weight";

                  }
                  }
                );
              },
              child: Container(
                  child: "Calculator"
                      .text
                      .size(22)
                      .semiBold
                      .color(accentHexColor)
                      .make()),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                child:
                    _bmiResult.toStringAsFixed(2).text.size(40).semiBold.color(accentHexColor).make()),
            SizedBox(
              height: 20,
            ),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                  child: _textResult
                      .text
                      .size(38)
                      .semiBold
                      .color(accentHexColor)
                      .make()),
            ),
            const SizedBox( height: 30 ),
            const Leftbar(barwidth: 40),
            const SizedBox(
              height: 10,
            ),
            const Leftbar(barwidth: 70),
            const SizedBox(
              height: 10,
            ),
            const Leftbar(barwidth: 30),
            const SizedBox( height: 10 ),
            const Rightbar(barwidth: 40),
            const SizedBox(
              height: 10,
            ),
            const Rightbar(barwidth: 70),
          ],
        ),
      ),
    );
  }
}

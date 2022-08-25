import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maths_games/box/text_field.dart';
import 'package:maths_games/constant/color.dart';

Widget headUnitBoxMiddle(String unit) {
  return Container(
      height: 80,
      width: 95,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 171, 196),
          border: Border(
            bottom: boxBorder,
            top: boxBorder,
          )),
      child: Center(
        child: Text(
          unit,
          style: TextStyle(
              fontSize: 50,
              color: Colors.black,
              fontFamily: 'Lora',
              fontWeight: FontWeight.w700),
        ),
      ));
}

Widget headUnitBoxSide(String unit) {
  return Container(
      height: 80,
      width: 95,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 171, 196),
          // border: Border.all(color: Colors.black, width: 3),
          border: Border(
              bottom: boxBorder,
              top: boxBorder,
              right: boxBorder,
              left: boxBorder)),
      child: Center(
          child: Text(
        unit,
        style: TextStyle(
            fontSize: 50,
            color: Colors.black,
            fontFamily: 'Lora',
            fontWeight: FontWeight.w700),
      )));
}

Widget numberBoxside(String num) {
  return Container(
      height: 80,
      width: 95,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(right: boxBorder, left: boxBorder, bottom: boxBorder)),
      child: Center(child: Text(num)));
}

Widget numberBoxMiddle(String num) {
  return Container(
      height: 80,
      width: 95,
      decoration:
          BoxDecoration(color: Colors.white, border: Border(bottom: boxBorder)),
      child: Center(child: Text(num)));
}

Widget operatorBox(IconData Date) {
  return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 210, 137, 222),
          border: Border(bottom: boxBorder, top: boxBorder, left: boxBorder)),
      child: Center(child: Icon(Date)));
}

Widget carryBoxSide(String unit) {
  return Container(
      height: 80,
      width: 95,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 171, 196),
          border: Border(bottom: boxBorder, right: boxBorder, left: boxBorder)),
      child: Center(child: Text(unit)));
}

Widget carryBoxMiddle(String num) {
  return Container(
      height: 80,
      width: 95,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 171, 196),
          border: Border(bottom: boxBorder)),
      child: Center(child: Text(num)));
}

Widget answerBoxSide() {
  final _textControllerRight = TextEditingController();
  var u = _textControllerRight;
  return Container(
      height: 80,
      width: 95,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 141, 203, 255),
          border: Border(bottom: boxBorder, right: boxBorder, left: boxBorder)),
      child: 
      // answerBoxSideclass()
      Center(
          child:
           TextField(
        controller: _textControllerRight,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(border: InputBorder.none),
      ))
      );
}




// Widget answerBoxSide() {
//   final _textController = TextEditingController();
//   return Container(
//       height: 80,
//       width: 95,
//       decoration: BoxDecoration(
//           color: Color.fromARGB(255, 141, 203, 255),
//           border: Border(bottom: boxBorder, right: boxBorder, left: boxBorder)),
//       child: Center(
//           child: TextField(
//         controller: _textController,
//         keyboardType: TextInputType.number,
//         decoration: InputDecoration(border: InputBorder.none),
//       )));
// }

Widget answerBoxMiddle(String num) {
  return Container(
      height: 80,
      width: 95,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 141, 203, 255),
          border: Border(bottom: boxBorder)),
      child: Center(child: Text(num)));
}

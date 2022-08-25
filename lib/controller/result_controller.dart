import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maths_games/constant/color.dart';
import 'package:maths_games/controller/number_generator.dart';

class resultContoller extends GetxController {
  bool resultApp = true;
  bool textfleidClear = false;
  
  // late final String oprator;
  // late final int numbetOfProblem;
  
  void result(int appTotel, var userTotel) {
    if (appTotel == userTotel) {
      resultApp = true;
    } else {
      resultApp = false;
    }
  }

  // void worngAnsDialog(oprator, userTotal) {
  //   Get.dialog(AlertDialog(
  //     title: oprator,
  //     backgroundColor: MulityColorbackground,
  //     content: Text(
  //       'Input $userTotal is wrong',
  //     ),
  //     actions: [
  //       ElevatedButton(
  //           onPressed: () {
  //             Get.back();
  //           },
  //           child: Text('Try'))
  //     ],
  //   ));
  // }

  // void rightAnsDialog(oprator, userTotal, numbetOfProblem) {
  //   Get.dialog(AlertDialog(
  //     title: oprator,
  //     backgroundColor: MulityColorbackground,
  //     content: Column(
  //       children: [
  //         Text(
  //           'Input $userTotal is Right',
  //         ),
  //         Text('$numbetOfProblem / 10')
  //       ],
  //     ),
  //     actions: [
  //       ElevatedButton(
  //           onPressed: () {
  //             controller2.randomNum();
  //             Get.back();
  //           },
  //           child: Text('Next'))
  //     ],
  //   ));

  @override
  void onInit() {
    super.onInit();
    // called immediately after the widget is allocated menary
    debugPrint("Controller onInit been called");
  }

  @override
  void onReady() {
    super.onReady();
    // called after the widget is rendered on screen
    debugPrint("Controller onReady been called");
  }

  @override
  void onClose() {
    // TODO: implement onClose

    // called just before the Controller is delated from memory

    super.onClose();
    debugPrint("Controller onClose been called");
  }
}

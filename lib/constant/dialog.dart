import 'package:flutter/material.dart';
import 'package:get/get.dart';

// final controller5 = Get.put(Controller());

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

// void rightAnsDialog(oprator, userTotal) {
//   bool textfleidClear = false;
//   Get.dialog(AlertDialog(
//     title: oprator,
//     backgroundColor: MulityColorbackground,
//     content: Column(
//       children: [
//         Text(
//           'Input $userTotal is Right',
//         ),
//       ],
//     ),
//     actions: [
//       ElevatedButton(
//           onPressed: () {
//             Get.find<Controller>().randomNum();
//             Get.back();
//             Get.find<resultContoller>().textfleidClear = true;
//             textfleidClear = true;
//           },
//           child: Text('Next'))
//     ],
//   ));
// }


int totalProble({required int rightAnsCount, required int wongAnsCount}) {
  int totalNumProble = rightAnsCount + wongAnsCount;
  return totalNumProble;
}

void worngAnsDialogImg() {
  Get.dialog(AlertDialog(
    content: Container(
      color: Colors.red,
      // height: 40,
      // width: 30,
      child: Image.asset(
        'images/wrong.png',
        // height: 40,
        // width: 30,
      ),
    ),
  ));
}

void rightAnsDialogImg() {
  Get.dialog(AlertDialog(
    content: Container(
      color: Colors.red,
      // height: 40,
      // width: 30,
      child: Image.asset(
        'images/right.png',
        // height: 40,
        // width: 30,
      ),
    ),
  ));
}

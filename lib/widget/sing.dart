import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maths_games/controller/level_controller.dart';

Widget singHeadTablecell() {
  return Container(
      height: 80,
      width: 95,
      decoration: const BoxDecoration(
          // color: Color.fromARGB(255, 246, 171, 196),
          ),
      child: Center(
        child: Text(
          '',
        ),
      ));
}

Widget singCarryTablecell() {
  return Container(height: 80, width: 95, child: Center(child: Text('')));
}

Widget singSingnumberTableCell() {
  final _levelController = Get.put(LevelController());

  return Container(
    padding: EdgeInsets.only(right: 12),
    height: 80,
    width: 95,
    child: Center(
        child: Icon(
      _levelController.addition
          ? Icons.add
          : _levelController.subtraction
              ? Icons.minimize
              : _levelController.mliplication
                  ? Icons.close
                  : Icons.add,
      size: 50,
    )),
  );
}

Widget SingnumberTableCell() {
  return Container(height: 80, width: 95, child: const Text(''));
}

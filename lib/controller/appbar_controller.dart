import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maths_games/controller/level_controller.dart';
import 'package:maths_games/widget/widget.dart';

class AppbarController extends GetxController {
  final _levelController = Get.put(LevelController());
  Widget heading() {
    return _levelController.addition == true
        ? AddScreenHeadName()
        : _levelController.subtraction == true
            ? SubtractionScreenHeadName()
            : _levelController.mliplication == true
                ? multiplicationScreenHeadName()
                : _levelController.division == true
                    ? divisionScreenHeadName()
                    : Text('Heading');
  }
}

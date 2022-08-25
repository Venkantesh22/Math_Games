import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maths_games/controller/level_controller.dart';
import 'package:maths_games/controller/number_generator.dart';
import 'package:maths_games/level/division_screen.dart';
import 'package:maths_games/level/easy_level.dart';
import 'package:maths_games/level/hard_level.dart';
import 'package:maths_games/level/medium_level.dart';
import 'package:maths_games/level/very_hard_level.dart';

import 'package:maths_games/widget/widget.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final levelController = Get.put(LevelController());
    final ranNumController = Get.put(Controller());
    var _myWidth = MediaQuery.of(context).size.width;
    var _myHight = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        levelController.resetTOAllFalse();
        return true;
      },
      child: Scaffold(
          // appBar: AppBar(
          //   title: LevelHead(),
          //   centerTitle: true,
          //   backgroundColor: Colors.transparent,
          //   elevation: 0.0,
          // ),
          // extendBodyBehindAppBar: true,
          body: Container(
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Header Level
              LevelHead(),
              // Easy Button
              GestureDetector(
                  onTap: () {
                    Get.to(() {
                      levelController.easyLevel = true;
                      ranNumController.randomNum();
                      return levelController.division
                          ? DivisionScreen()
                          : SumEasyLevelScreen();
                    });
                  },
                  child: LevelButtonMethod(_myWidth, 'Easy', Colors.blue)),
              // Medium Button
              GestureDetector(
                  onTap: () {
                    Get.to(() {
                      levelController.mediumLevel = true;
                      ranNumController.randomNum();
                      return levelController.division
                          ? DivisionScreen()
                          : MediumLevelScreen();
                    });
                  },
                  child: LevelButtonMethod(_myWidth, 'Medium', Colors.red)),
              // head Button
              GestureDetector(
                  onTap: () {
                    Get.to(() {
                      levelController.headLevel = true;
                      ranNumController.randomNum();
                      return levelController.division
                          ? DivisionScreen()
                          : EasyLevelScreen();
                    });
                  },
                  child: LevelButtonMethod(_myWidth, 'Hard', Colors.green)),
              // Very hard Button
              GestureDetector(
                  onTap: () {
                    ranNumController.randomNum();
                    if (levelController.mliplication == true) {
                      Get.to(() {
                        levelController.mulitVheadLevel = true;
                        return levelController.division
                            ? DivisionScreen()
                            : EasyLevelScreen();
                      });
                    } else {
                      Get.to(() {
                        levelController.vheadLevel = true;
                        ranNumController.randomNum();
                        return levelController.division
                            ? DivisionScreen()
                            : VeryHardLevelScreen();
                      });
                    }
                  },
                  child:
                      LevelButtonMethod(_myWidth, 'Very Hard', Colors.yellow)),
            ],
          ),
        ),
      )),
    );
  }

  Container LevelButtonMethod(
      double _myWidth, String LevelName, Color bgColor) {
    return Container(
        width: _myWidth,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.black, width: 5),
          color: bgColor,
        ),
        child: Center(
          child: Text(
            "$LevelName",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Lora",
              fontSize: 25,
              letterSpacing: 2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maths_games/controller/level_controller.dart';
import 'package:maths_games/level/division_screen.dart';
import 'package:maths_games/level/easy_level.dart';
import 'package:maths_games/level/hard_level.dart';
import 'package:maths_games/level/medium_level.dart';
import 'package:maths_games/level/very_hard_level.dart';
import 'package:maths_games/controller/number_generator.dart';
import 'package:maths_games/screen/home_screem/home_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final levelController = Get.put(LevelController());
    final ranNumController = Get.put(Controller());
    var Gamedata = Get.arguments;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Score',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.brown,
                wordSpacing: 2,
                decoration: TextDecoration.underline),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Correct = ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Lato'),
                    ),
                    Text(
                      "${Gamedata[0]}",
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Lato'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Wrong = ',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Lato'),
                    ),
                    Text(
                      "${Gamedata[1]}",
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Lato'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Exit Button
                    GestureDetector(
                      onTap: () {
                        Get.offAll(() {
                          levelController.resetTOAllFalse();
                          return home_Screen();
                        });
                      },
                      child: Container(
                        height: 100,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 18, 190, 228),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 3, 75, 104),
                                width: 6)),
                        child: const Center(
                          child: Text(
                            'EXIT',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lato',
                                color: Colors.white,
                                letterSpacing: 2),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    // Restart Button
                    GestureDetector(
                      onTap: () {
                        print('Easy : ${levelController.easyLevel}');
                        print('Medium : ${levelController.mediumLevel}');
                        print('heard : ${levelController.headLevel}');
                        print('V.head : ${levelController.vheadLevel}');
                        if (levelController.division == true) {
                          Get.offAll(() {
                            print('Easy');
                            ranNumController.randomNum();
                            return DivisionScreen();
                          });
                        } else {
                          if (levelController.easyLevel) {
                            Get.offAll(() {
                              print('Easy');
                              ranNumController.randomNum();
                              return SumEasyLevelScreen();
                            });
                          }

                          if (levelController.mediumLevel) {
                            print('Mediun');
                            Get.offAll(() {
                              ranNumController.randomNum();
                              return MediumLevelScreen();
                            });
                          }

                          if (levelController.headLevel) {
                            print('Mediun');
                            Get.offAll(() {
                              ranNumController.randomNum();
                              return EasyLevelScreen();
                            });
                          }

                          if (levelController.vheadLevel) {
                            print('Mediun');
                            Get.offAll(() {
                              ranNumController.randomNum();
                              return VeryHardLevelScreen();
                            });
                          }
                        }
                      },
                      child: Container(
                        height: 100,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Color.fromARGB(255, 65, 5, 76),
                                width: 6)),
                        child: const Center(
                          child: Text(
                            'RESTART',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Lato',
                                color: Colors.white,
                                letterSpacing: 2),
                            // textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}

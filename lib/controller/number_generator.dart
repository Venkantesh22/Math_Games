import 'dart:math';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:maths_games/controller/level_controller.dart';

class Controller extends GetxController {
  // final controller3 = Get.put(resultContoller());
  final levelController = Get.put(LevelController());

  // static Controller get to => Get.find();

  // var firstHunNum = Random().nextInt(10).toString();

  // = Random().nextInt(10).toString();
  // var sun = f
  int firstThousNum = 0;
  int firstHunNum = 0;
  int firstTenNum = 0;
  int firstUnitNum = 0;
  double divFirstUnitNum = 0.0;

  int secondThousNum = 0;
  int secondHunNum = 0;
  int secondTenNum = 0;
  int secondUnitNum = 0;
  double divSecondUnitNum = 0.0;

  int threeThousNum = 0;
  int threedHunNum = 0;
  int threeTenNum = 0;
  int threeUnitNum = 0;

// variable for Addition Answer Storage
  int appTotalOneCol = 0;
  int appTotalTwoCol = 0;
  int appTotalThreeCol = 0;
  int appTotalFourCol = 0;
  int divAnswer = 0;

// variable for Subraction Answer Storage
  // int appSubOneCol = 0;
  // int appSubTwoCol = 0;
  // int appSubThreeCol = 0;
  // int appSubFourCol = 0;

  void randomNum() {
    // Number Generator for "Subtraction"
    if (levelController.subtraction == true) {
      if (levelController.easyLevel) {
        Random firstColRandom = Random();
        int secondRowMin = 0;
        int secondRowMix = 7;
        int firstRowMin = 7;
        int firstRowMix = 10;

        firstUnitNum =
            firstRowMin + firstColRandom.nextInt(firstRowMix - firstRowMin);
        secondUnitNum = Random().nextInt(10);
      } else if (levelController.mediumLevel) {
        Random secondColRandom = Random();
        int secondRowMin = 0;
        int secondRowMix = 5;
        int firstRowMin = 7;
        int firstRowMix = 10;

        firstTenNum =
            firstRowMin + secondColRandom.nextInt(firstRowMix - firstRowMin);
        firstUnitNum =
            firstRowMin + secondColRandom.nextInt(firstRowMix - firstRowMin);

        secondTenNum =
            secondRowMin + secondColRandom.nextInt(secondRowMix - secondRowMin);
        secondUnitNum = Random().nextInt(10);
      } else if (levelController.headLevel == true) {
        Random threeColRandom = Random();
        int secondRowMin = 0;
        int secondRowMix = 5;
        int firstRowMin = 5;
        int firstRowMix = 10;

        firstHunNum =
            firstRowMin + threeColRandom.nextInt(firstRowMix - firstRowMin);
        firstTenNum = Random().nextInt(10);
        firstUnitNum = Random().nextInt(10);

        secondHunNum =
            secondRowMin + threeColRandom.nextInt(secondRowMix - secondRowMin);
        secondTenNum = Random().nextInt(10);
        secondUnitNum = Random().nextInt(10);
      } else {
        Random fourColRandom = Random();
        int threeRowMin = 0;
        int threeRowMix = 3;
        int secondRowMin = 3;
        int secondRowMix = 6;
        int firstRowMin = 8;
        int firstRowMix = 10;
        firstThousNum =
            firstRowMin + fourColRandom.nextInt(firstRowMix - firstRowMin);
        firstHunNum = Random().nextInt(10);
        firstTenNum = Random().nextInt(10);
        firstUnitNum = Random().nextInt(10);

        secondThousNum =
            secondRowMin + fourColRandom.nextInt(secondRowMix - secondRowMin);
        secondHunNum =
            secondRowMin + fourColRandom.nextInt(secondRowMix - secondRowMin);
        secondTenNum =
            secondRowMin + fourColRandom.nextInt(secondRowMix - secondRowMin);
        secondUnitNum =
            secondRowMin + fourColRandom.nextInt(secondRowMix - secondRowMin);

        threeThousNum =
            threeRowMin + fourColRandom.nextInt(threeRowMix - threeRowMin);
        threedHunNum =
            threeRowMin + fourColRandom.nextInt(threeRowMix - threeRowMin);
        threeTenNum =
            threeRowMin + fourColRandom.nextInt(threeRowMix - threeRowMin);
        threeUnitNum =
            threeRowMin + fourColRandom.nextInt(threeRowMix - threeRowMin);
      }
    }
    // Number Generator for "Addition"
    else if (levelController.addition == true) {
      firstThousNum = Random().nextInt(10);
      firstHunNum = Random().nextInt(10);
      firstTenNum = Random().nextInt(10);
      firstUnitNum = Random().nextInt(10);

      secondThousNum = Random().nextInt(10);
      secondHunNum = Random().nextInt(10);
      secondTenNum = Random().nextInt(10);
      secondUnitNum = Random().nextInt(10);

      threeThousNum = Random().nextInt(10);
      threedHunNum = Random().nextInt(10);
      threeTenNum = Random().nextInt(10);
      threeUnitNum = Random().nextInt(10);
    }
    // Number Generator for "Multiplication"
    else if (levelController.mliplication == true) {
      if (levelController.mediumLevel) {
        // Random secondColRandom = Random();
        // int secondRowMin = 0;
        // int secondRowMix = 5;
        // int firstRowMin = 7;
        // int firstRowMix = 10;

        firstTenNum = Random().nextInt(10);
        // firstRowMin + secondColRandom.nextInt(firstRowMix - firstRowMin);
        firstUnitNum = Random().nextInt(10);
        // secondRowMin + secondColRandom.nextInt(secondRowMix - secondRowMin);

        secondTenNum = 0;
        // secondRowMin + secondColRandom.nextInt(secondRowMix - secondRowMin);
        secondUnitNum = Random().nextInt(10);
      } else if (levelController.headLevel == true) {
        firstHunNum = Random().nextInt(10);
        firstTenNum = Random().nextInt(10);
        firstUnitNum = Random().nextInt(10);

        secondUnitNum = Random().nextInt(10);
        secondTenNum = Random().nextInt(10);
        secondHunNum = 0;
      } else if (levelController.mulitVheadLevel == true) {
        firstThousNum = Random().nextInt(10);
        firstHunNum = Random().nextInt(10);
        firstTenNum = Random().nextInt(10);
        firstUnitNum = Random().nextInt(10);

        secondThousNum = Random().nextInt(10);
        secondHunNum = Random().nextInt(10);
        secondTenNum = Random().nextInt(10);
        secondUnitNum = Random().nextInt(10);
      } else {
        firstThousNum = Random().nextInt(10);
        firstHunNum = Random().nextInt(10);
        firstTenNum = Random().nextInt(10);
        firstUnitNum = Random().nextInt(10);

        secondThousNum = Random().nextInt(10);
        secondHunNum = Random().nextInt(10);
        secondTenNum = Random().nextInt(10);
        secondUnitNum = Random().nextInt(10);

        threeThousNum = Random().nextInt(10);
        threedHunNum = Random().nextInt(10);
        threeTenNum = Random().nextInt(10);
        threeUnitNum = Random().nextInt(10);
      }
    }
    // Number Generator for "Division"

    else if (levelController.division == true) {
      if (levelController.easyLevel == true) {
        firstUnitNum = Random().nextInt(50);
      } else if (levelController.mediumLevel == true) {
        firstUnitNum = Random().nextInt(100);
      } else if (levelController.headLevel == true) {
        firstUnitNum = Random().nextInt(1000);
      } else if (levelController.vheadLevel == true) {
        firstUnitNum = Random().nextInt(10000);
      }
      var primeNum = 0;
      bool isNOtPrime = false;
      List firstDivList = [];
      var count = 0;

      int i, m = 0, flag = 0;

      m = firstUnitNum ~/ 2;

      for (i = 2; i <= firstUnitNum; i++) {
        if (firstUnitNum % i == 0) {
          for (var i = 2; i < firstUnitNum; i++) {
            if (firstUnitNum % i == 0) {
              isNOtPrime = true;
              firstDivList.add(i);
              count++;
            }
          }

          flag = 1;
          break;
        }
      }

      try {
        if (firstDivList.isEmpty) {
          secondUnitNum = 1;
        } else {
          primeNum = Random().nextInt(count);

          secondUnitNum = firstDivList[primeNum];
        }
      } catch (e) {
        print(e);
        print('Error');
      }
      ;
      print(firstDivList);

      print('count $count');
      print('primeNum = $primeNum');
      print('firstUnitNum $firstUnitNum');
      print('secondUnitNum $secondUnitNum');
    }
    // medFirstHunNum();
    // medFirstTenNum();
    // medFirstUnitNum();

// -------------- Run an operation ------------------------------
    // Adition Operation
    if (levelController.addition == true) {
      appTotalFourCol = (((firstThousNum * 1000) +
              (firstHunNum * 100) +
              (firstTenNum * 10) +
              firstUnitNum) +
          ((secondThousNum * 1000) +
              (secondHunNum * 100) +
              (secondTenNum * 10) +
              secondUnitNum) +
          ((threeThousNum * 1000) +
              (threedHunNum * 100) +
              (threeTenNum * 10) +
              threeUnitNum));

      // App Total for Hard Level Game
      appTotalThreeCol =
          (((firstHunNum * 100) + (firstTenNum * 10) + firstUnitNum) +
              ((secondHunNum * 100) + (secondTenNum * 10) + secondUnitNum));
      // App Total for Medium Level Game
      appTotalTwoCol = (((firstTenNum * 10) + firstUnitNum) +
          ((secondTenNum * 10) + secondUnitNum));
      // App Total for Easy Level Game
      appTotalOneCol = (firstUnitNum + secondUnitNum);
    }
    //subtraction Operation
    else if (levelController.subtraction == true) {
      // App Subtraction for Easy Level Game
      appTotalOneCol = (firstUnitNum - secondUnitNum);
      // App Subtraction for Medium Level Game
      appTotalTwoCol = (((firstTenNum * 10) + firstUnitNum) -
          ((secondTenNum * 10) + secondUnitNum));
      // App Total for Hard Level Game
      appTotalThreeCol =
          (((firstHunNum * 100) + (firstTenNum * 10) + firstUnitNum) -
              ((secondHunNum * 100) + (secondTenNum * 10) + secondUnitNum));

      // App Total for Very Hard Level Game
      appTotalFourCol = (((firstThousNum * 1000) +
              (firstHunNum * 100) +
              (firstTenNum * 10) +
              firstUnitNum) -
          ((secondThousNum * 1000) +
              (secondHunNum * 100) +
              (secondTenNum * 10) +
              secondUnitNum) -
          ((threeThousNum * 1000) +
              (threedHunNum * 100) +
              (threeTenNum * 10) +
              threeUnitNum));
    }
    //mliplication Operation

    else if (levelController.mliplication == true) {
      // App Subtraction for Easy Level Game
      appTotalOneCol = (firstUnitNum * secondUnitNum);
      // App Subtraction for Medium Level Game
      appTotalTwoCol = (((firstTenNum * 10) + firstUnitNum) *
          ((secondTenNum * 10) + secondUnitNum));
      // App Total for Hard Level Game
      appTotalThreeCol =
          (((firstHunNum * 100) + (firstTenNum * 10) + firstUnitNum) *
              ((secondHunNum * 100) + (secondTenNum * 10) + secondUnitNum));

      // App Total for Very Hard Level Game
      appTotalFourCol = (((firstThousNum * 1000) +
              (firstHunNum * 100) +
              (firstTenNum * 10) +
              firstUnitNum) -
          ((secondThousNum * 1000) +
              (secondHunNum * 100) +
              (secondTenNum * 10) +
              secondUnitNum) -
          ((threeThousNum * 1000) +
              (threedHunNum * 100) +
              (threeTenNum * 10) +
              threeUnitNum));
    }
    //mliplication Operation
    else if (levelController.division = true) {
      divAnswer = firstUnitNum ~/ secondUnitNum;
      // int.parse(divAnswer);
    }

    update();
  }

// Additin Game opertion
  // void additionOpertion() {
  // App Total for Very Hard Level Game
  // appTotalFourCol = (((firstThousNum * 1000) +
  //         (firstHunNum * 100) +
  //         (firstTenNum * 10) +
  //         firstUnitNum) +
  //     ((secondThousNum * 1000) +
  //         (secondHunNum * 100) +
  //         (secondTenNum * 10) +
  //         secondUnitNum) +
  //     ((threeThousNum * 1000) +
  //         (threedHunNum * 100) +
  //         (threeTenNum * 10) +
  //         threeUnitNum));

  // // App Total for Hard Level Game
  // appTotalThreeCol =
  //     (((firstHunNum * 100) + (firstTenNum * 10) + firstUnitNum) +
  //         ((secondHunNum * 100) + (secondTenNum * 10) + secondUnitNum));
  // // App Total for Medium Level Game
  // appTotalTwoCol = (((firstTenNum * 10) + firstUnitNum) +
  //     ((secondTenNum * 10) + secondUnitNum));
  // // App Total for Easy Level Game
  // appTotalOneCol = (firstUnitNum + secondUnitNum);
  //   update();
  // }

// Subtraction Game opertion
  // void subtractionOpertion() {
  //   // App Subtraction for Easy Level Game
  //   appTotalOneCol = (firstUnitNum - secondUnitNum);
  //   // App Subtraction for Medium Level Game
  //   appTotalTwoCol = (((firstTenNum * 10) + firstUnitNum) -
  //       ((secondTenNum * 10) + secondUnitNum));
  //   // App Total for Hard Level Game
  //   appTotalThreeCol =
  //       (((firstHunNum * 100) + (firstTenNum * 10) + firstUnitNum) -
  //           ((secondHunNum * 100) + (secondTenNum * 10) + secondUnitNum));

  //   // App Total for Very Hard Level Game
  //   appTotalFourCol = (((firstThousNum * 1000) +
  //           (firstHunNum * 100) +
  //           (firstTenNum * 10) +
  //           firstUnitNum) -
  //       ((secondThousNum * 1000) +
  //           (secondHunNum * 100) +
  //           (secondTenNum * 10) +
  //           secondUnitNum) -
  //       ((threeThousNum * 1000) +
  //           (threedHunNum * 100) +
  //           (threeTenNum * 10) +
  //           threeUnitNum));

  //   update();
  // }

// First row value are generator
  // String medFirstHunNum() {
  //   return firstHunNum = Random().nextInt(10).toString();
  // }

  // String medFirstTenNum() {
  //   return firstTenNum = Random().nextInt(10).toString();
  // }

  // String medFirstUnitNum() {
  //   return firstUnitNum = Random().nextInt(10).toString();
  // }

// First row value are generator
  // String medSecondHunNum() {
  //   return secondHunNum = Random().nextInt(10).toString();
  // }

  // String medSecondTenNum() {
  //   return secondTenNum = Random().nextInt(10).toString();
  // }

  // String medSecondUnitNum() {
  //   return secondUnitNum = Random().nextInt(10).toString();
  // }

  // int Answer() {
  //   return int.parse(medFirstHunNum() + medFirstTenNum() + medFirstUnitNum());
  //   // sum = int.parse(medSecondHunNum() + medSecondTenNum());
  // }

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
    randomNum();
    // TODO: implement onClose

    // called just before the Controller is delated from memory

    super.onClose();
    debugPrint("Controller onClose been called");
  }
}

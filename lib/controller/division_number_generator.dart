import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DivNumListController extends GetxController {
  void divNum() {
    late int secondUnitNum = 1;
    var firstUnitNum;
    var primeNum = 0;
    bool isNOtPrime = false;
    List firstDivList = [];
    var count = 0;
    firstUnitNum = Random().nextInt(100);
    int i, m = 0, flag = 0;

    m = firstUnitNum ~/ 2;

    // try {
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
      primeNum = Random().nextInt(count);
      
      secondUnitNum = firstDivList[primeNum];
    } catch (e) {
      print(e);
      print('Error');
    }

  

    print(firstDivList);

    print('count $count');
    print('primeNum = $primeNum');
    print('firstUnitNum $firstUnitNum');
    print('secondUnitNum $secondUnitNum');
    // firstDivList.clear();
    // count = 0;
    // secondUnitNum = secondUnitNum - secondUnitNum;
    // primeNum = 0;
    // print();
  }
}

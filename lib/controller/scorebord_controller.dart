import 'package:get/get.dart';

class ScoreBordController extends GetxController {
  var rightAnsCount = 0;
  var wongAnsCount = 0;
  var totalNumProble = 0;

  //  totalNumProble = rightAnsCount + wongAnsCount;
  void totalNumProMet() {
    totalNumProble = rightAnsCount + wongAnsCount;
    update();
  }
}

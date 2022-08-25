import 'package:get/get.dart';

class LevelController extends GetxController {
  bool easyLevel = false;
  bool mediumLevel = false;
  bool headLevel = false;
  bool vheadLevel = false;
  bool mulitVheadLevel = false;

  bool addition = false;
  bool subtraction = false;
  bool division = false;
  bool mliplication = false;

  void resetTOAllFalse() {
    easyLevel = false;
    mediumLevel = false;
    headLevel = false;
    vheadLevel = false;
    addition = false;
    subtraction = false;
    division = false;
    mliplication = false;
  }
}

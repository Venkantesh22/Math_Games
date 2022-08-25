import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:maths_games/box/text_field.dart';
import 'package:maths_games/constant/color.dart';
import 'package:maths_games/constant/dialog.dart';
import 'package:maths_games/constant/scoreboard.dart';
import 'package:maths_games/controller/appbar_controller.dart';
import 'package:maths_games/controller/division_number_generator.dart';
import 'package:maths_games/controller/level_controller.dart';
import 'package:maths_games/controller/notch_controller.dart';
import 'package:maths_games/controller/number_generator.dart';
import 'package:maths_games/controller/result_controller.dart';
import 'package:maths_games/controller/scorebord_controller.dart';
import 'package:maths_games/screen/home_screem/home_screen.dart';
import 'package:maths_games/screen/home_screem/score_screen.dart';
import 'package:maths_games/widget/widget.dart';

class DivisionScreen extends StatefulWidget {
  DivisionScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DivisionScreen> createState() => _DivisionScreenState();
}

class _DivisionScreenState extends State<DivisionScreen> {
// TextEditingController for Answer textField
  TextEditingController _unitController = TextEditingController();
  // TextEditingController _tenController = TextEditingController();
  // TextEditingController _hunderController = TextEditingController();

// TextEditingController for Answer textField
  TextEditingController _unitCrayyController = TextEditingController();
  // TextEditingController _tenCrayyController = TextEditingController();
  // TextEditingController _hunderCrayyController = TextEditingController();

  final controller2 = Get.put(Controller());
  final controller3 = Get.put(resultContoller());
  final scoreController4 = Get.put(ScoreBordController());
  final levelController = Get.put(LevelController());
  final appbarController = Get.put(AppbarController());
  final divNumListController = Get.put(DivNumListController());
  final _notchController = Get.put(NotchController());

  // final ScrollController _scrollController = new ScrollController();

  // void scroll(double position) {
  //   _scrollController.jumpTo(position);
  // }

  //
  bool diplayAnawer = false;
  // this var store for MulityColorbackground and for appbar bgcolor and body bgColors be a same
  var bgColors = MulityColorbackground;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _unitController;
    // _tenController;
    // _hunderController;
    controller2;
    controller3;
    scoreController4;
    levelController;
    appbarController;
    _notchController;
  }

  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance?.addPostFrameCallback((_) => scroll(-500));
  // }

  void textFieldClear() {
    _unitController.clear();
    // _tenController.clear();
    // _hunderController.clear();
    _unitCrayyController.clear();
    // _tenCrayyController.clear();
    // _hunderCrayyController.clear();
  }

  @override
  Widget build(BuildContext context) {
    var _myWidth = MediaQuery.of(context).size.width;
    var _myHight = MediaQuery.of(context).size.height;

    // anwser field controller store in variable
    var unitAnsField = _unitController.text;
    // var tenAnsField = _tenController.text;
    // var hunderAnsField = _hunderController.text;

    var userAnswer = unitAnsField;

    // totalNumProble = wongAnsCount + rightAnsCount;
    scoreController4.totalNumProMet();

    return WillPopScope(
      onWillPop: () async {
        levelController.resetTOAllFalse();
        Get.offAll(() {
          return home_Screen();
        });
        return true;
      },
      child: SafeArea(
        minimum: _notchController.hasNotchModlie
            ? const EdgeInsets.only(top: 30)
            : const EdgeInsets.only(top: 0),
        child: Scaffold(
          appBar: AppBar(
              title: appbarController.heading(),
              // levelController.addition
              //     ? SubtractionScreenHeadName()
              //     : AddScreenHeadName(),
              backgroundColor: bgColors,
              centerTitle: true,
              elevation: 0,
              leading: GestureDetector(
                onTap: () {
                  levelController.resetTOAllFalse();
                  Get.offAll(() {
                    return home_Screen();
                  });
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 251, 28, 28),
                        border: Border.all(
                            color: Color.fromARGB(255, 132, 9, 0), width: 5),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20))),
                    child: const RotatedBox(
                        quarterTurns: 2,
                        child: Icon(
                          Icons.double_arrow_rounded,
                          color: Colors.white,
                        ))),
              )),
          body: Center(
            // heightFactor: _myHight * 0.95,
            child: SingleChildScrollView(
              // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              // dragStartBehavior: DragStartBehavior.down,
              // reverse: true,
              // controller: _scrollController,
              physics: ScrollPhysics(),
              child:
                  //  ConstrainedBox(
                  //   constraints: BoxConstraints.tightFor(
                  //     height: MediaQuery.of(context).size.height,
                  //   ),
                  Center(
                child: Container(
                    width: _myWidth,
                    height: _myHight -
                        MediaQuery.of(context).padding.top -
                        kToolbarHeight,
                    alignment: Alignment.center,
                    color: bgColors,
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ScoreBord(
                                  rightAnsCount: scoreController4.rightAnsCount,
                                  wongAnsCount: scoreController4.wongAnsCount
                                  // rightAnsCount: rightAnsCount,
                                  // wongAnsCount: wongAnsCount

                                  ),
                              TotelNumofProblem(
                                  sumOfRightWrongCount:
                                      scoreController4.totalNumProble
                                  // sumOfRightWrongCount: totalNumProble

                                  )
                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                          child: Table(
                            // border: TableBorder.all(color: Colors.black, width: 2),
                            border: TableBorder.symmetric(
                                outside: BorderSide.none,
                                inside: const BorderSide(
                                    width: 3, color: Colors.black)),
                            children: [
                              // Heard row First row for up to down
                              // TableRow(
                              //   children: [
                              //   // HeadTablecell('H'),
                              //   // HeadTablecell('T'),
                              //   HeadTablecell('U'),
                              // ]),
                              // Carry answer row, Second row for up to down
                              // TableRow(children: [
                              //   TextFields(
                              //     controller: _unitCrayyController,
                              //     unit: '0',
                              //   ),
                              //   // TextFields(
                              //   //   controller: _tenCrayyController,
                              //   //   unit: '0',
                              //   // ),
                              //   // TextFields(
                              //   //   controller: _hunderCrayyController,
                              //   //   unit: '0',
                              //   // ),
                              // ]),
                              // Randow number generate Three row for up to down
                              TableRow(children: [
                                // GetBuilder<Controller>(
                                //     builder: (controller2) => numberTableCell(
                                //         controller2.firstHunNum.toString())),
                                // GetBuilder<Controller>(
                                //     builder: (controller2) => numberTableCell(
                                //         controller2.firstTenNum.toString())),
                                GetBuilder<Controller>(
                                    builder: (controller2) => numberTableCell(
                                        controller2.firstUnitNum.toString())),
                              ]),
                              // Randow number generate Four row for up to down
                              TableRow(children: [
                                // GetBuilder<Controller>(
                                //     builder: (controller2) => numberTableCell(
                                //         controller2.secondHunNum.toString())),
                                // GetBuilder<Controller>(
                                //     builder: (controller2) => numberTableCell(
                                //         controller2.secondTenNum.toString())),
                                GetBuilder<Controller>(
                                    builder: (controller2) => numberTableCell(
                                        controller2.secondUnitNum.toString())),
                              ]),
                              // User answer Row Five row for up to down
                              TableRow(children: [
                                // TextFields(
                                //   controller: _hunderController,
                                //   unit: 'H',
                                // ),
                                // TextFields(
                                //   controller: _tenController,
                                //   unit: 'T',
                                // ),
                                TextFields(
                                  controller: _unitController,
                                  unit: 'U',
                                )
                              ])
                            ],
                          ),
                        ),
                        // Random Button
                        // ElevatedButton(
                        //   onPressed: () {
                        //     controller2.randomNum();
                        //     textFieldClear();
                        //   },
                        //   child: Text(
                        //     'Random',
                        //   ),
                        // ),
                        Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Exit buttom of game screen
                              // ElevatedButton(
                              //     style: ButtonStyle(
                              //         backgroundColor: MaterialStateProperty.all(
                              //             // Color.fromARGB(255, 33, 243, 163),
                              //             Colors.deepOrange),
                              //         elevation: MaterialStateProperty.all(8)),
                              //     onPressed: () {
                              //       Get.back();
                              //     },
                              //     child: Text(
                              //       'Exit',
                              //       style: TextStyle(
                              //           color: Colors.white,
                              //           fontSize: 25,
                              //           fontFamily: 'Lora'),
                              //     )),
                              // Result buttom of game screen
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          // Color.fromARGB(255, 33, 243, 163),
                                          Color.fromARGB(255, 244, 111, 70)),
                                      elevation: MaterialStateProperty.all(8)),
                                  onPressed: () {
                                    print('Add = ${levelController.addition}');
                                    print(
                                        'Sub = ${levelController.subtraction}');
                                    print(
                                        'rightAnsCount : $scoreController4.rightAnsCount , totalNumProble : $scoreController4.totalNumProble');

                                    diplayAnawer = true;

                                    setState(() {
                                      controller3.result(
                                          (controller2.divAnswer) as int,
                                          int.parse(userAnswer));

                                      print('UserAnswer :  $userAnswer');
                                      print(
                                          'AppAnswer :  ${controller2.appTotalOneCol}');
                                      print(
                                          'FirstUnit ${controller2.firstUnitNum} ');
                                      print(
                                          'SecondUnit ${controller2.secondUnitNum} ');

                                      if (scoreController4.totalNumProble <=
                                          9) {
                                        if (controller3.resultApp) {
                                          scoreController4.rightAnsCount++;
                                          controller2.randomNum();
                                          textFieldClear();
                                          // ++rightAnsCount;
                                          rightAnsDialogImg();

                                          if (scoreController4.totalNumProble >=
                                              8) {
                                            Get.off(() {
                                              return ScoreScreen();
                                            }, arguments: [
                                              '${scoreController4.rightAnsCount}',
                                              '${scoreController4.wongAnsCount}'
                                            ]);
                                          }

                                          print(
                                              'rightAnsCount : ${scoreController4.rightAnsCount} , totalNumProble : ${scoreController4.totalNumProble}');
                                          // rightAnsDialog(AddScreenHeadName(), userAnswer);
                                          // controller2.randomNum();
                                          print(
                                              'unitAnsField :  $unitAnsField');
                                        } else {
                                          scoreController4.wongAnsCount++;

                                          // ++wongAnsCount;

                                          worngAnsDialogImg();
                                          print(
                                              'wongAnsCount : ${scoreController4.wongAnsCount},, totalNumProble : ${scoreController4.totalNumProble}');
                                          // worngAnsDialog(AddScreenHeadName(), userAnswer);

                                        }
                                      } else {
                                        Get.off(() {
                                          return ScoreScreen();
                                        }, arguments: [
                                          '${scoreController4.rightAnsCount}',
                                          '${scoreController4.wongAnsCount}'
                                        ]);
                                      }
                                    });
                                  },
                                  child: Container(child: resultButton())),
                              // Next buttom of game screen
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 244, 111, 70)),
                                      elevation: MaterialStateProperty.all(8)),
                                  onPressed: () {
                                    setState(() {
                                      controller2.randomNum();
                                      textFieldClear();
                                      if (scoreController4.totalNumProble >=
                                          10) {
                                        Get.off(() {
                                          return ScoreScreen();
                                        });
                                      }
                                    });
                                  },
                                  child: Center(child: NextButton())
                                  // Text(
                                  //   'Next',
                                  //   style: TextStyle(
                                  //       color: Colors.white,
                                  //       fontSize: 25,
                                  //       fontFamily: 'Lora'),
                                  // )

                                  ),
                            ],
                          ),
                        ),

                        // Display Answer in after Click on Result button
                        // diplayAnawer
                        //     ? controller3.resultApp
                        //         ? GetBuilder<resultContoller>(
                        //             builder: (controller3) => Text('Right'))
                        //         : GetBuilder<resultContoller>(
                        //             builder: (controller3) => Text("worng"))
                        //     : Text('You answer'),

                        // diplayAnawer ? Get.to(() => DivisionScreen(),
                        // duration: Duration(milliseconds: 800),
                        // transition: Transition.fadeIn
                        // ) : const Text("data"),

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     ElevatedButton(
                        //         onPressed: () {
                        //           Get.back();
                        //         },
                        //         child: Text('Exit')),
                        //     Container(
                        //         child: TotelNumofProblem(
                        //             sumOfRightWrongCount: totalNumProble)),
                        //     ElevatedButton(
                        //         onPressed: () {
                        //           controller2.randomNum();
                        //           textFieldClear();
                        //         },
                        //         child: Text('Next')),
                        //   ],
                        // )
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget HeadTablecell(String unit) {
    return Container(
        height: 80,
        width: 95,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 246, 171, 196),
        ),
        child: Center(
          child: Text(
            unit,
            style: const TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontFamily: 'Lora',
                fontWeight: FontWeight.w900),
          ),
        ));
  }

  Widget carryTablecell(var carry) {
    return Container(
        height: 80,
        width: 95,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 171, 196),
        ),
        child: Center(child: Text(carry)));
  }

  Widget numberTableCell(String num) {
    return Container(
        height: 80,
        width: 20,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
            child: Text(
          num,
          style: TextStyle(
            fontSize: 50,
            fontFamily: 'Lora',
            // fontWeight: FontWeight.w700,
          ),
        )));
  }

  // Widget answerBoxSide() {
  //   // final _textControllerRight3 = TextEditingController();
  //   // var u = _textControllerRight3;
  //   return Container(
  //       height: 80,
  //       width: 95,
  //       decoration: BoxDecoration(
  //         color: Color.fromARGB(255, 141, 203, 255),
  //       ),
  //       child: Center(
  //         child:
  //             //  answerBoxSideclass()
  //             TextField(
  //           controller: _textControllerRight3,
  //           keyboardType: TextInputType.number,
  //           decoration: InputDecoration(border: InputBorder.none),
  //         ),
  //       ));
  // }
}

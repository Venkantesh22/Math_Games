import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:get/get.dart';
import 'package:maths_games/constant/color.dart';
import 'package:maths_games/controller/level_controller.dart';
import 'package:maths_games/controller/notch_controller.dart';
import 'package:maths_games/level/level.dart';
import 'package:maths_games/widget/operator_symbol.dart';
import 'package:maths_games/widget/widget.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class home_Screen extends StatefulWidget {
  home_Screen({Key? key}) : super(key: key);

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  final _notchController = Get.put(NotchController());
  // late SharedPreferences preferences;

  void initState() {
    super.initState();
    hasN();
  }

  hasN() async {
    if (Device.get().hasNotch) {
      _notchController.hasNotchModlie = true;
      print("Device have notch = ${_notchController.hasNotchModlie}");
    } else {
      // _notchController.hasNotch = true;
      print("Device not have notch = ${_notchController.hasNotchModlie}");
    }
  }
  // Future init() async {
  //   preferences = await SharedPreferences.getInstance();
  //   // hasNotchMed();
  // }

  // hasNotchMed() {
  //   if (Device.get().hasNotch) {
  //     _notchController.hasNotch = preferences.setBool('notch', true) as bool;
  //     print("Device have notch = ${_notchController.hasNotch}");
  //   } else {
  //     print("Device not have notch = ${_notchController.hasNotch}");
  //   }
  // }

  Future<bool?> showWarning(BuildContext context) async => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: const Text('Do you want to exit a app?'),
            actions: [
              GestureDetector(
                onTap: (() => Navigator.pop(context, false)),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                  child: Text(
                    'No',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (() => Navigator.pop(context, true)),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 10),
                  child: Text(
                    'Yes',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ));

  @override
  Widget build(BuildContext context) {
    // final padding = MediaQuery.of(context).;
    // print('padding $padding');

    final _levelController = Get.put(LevelController());
    var _myWidth = MediaQuery.of(context).size.width;
    var _myHight = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        print('Back button is press');
        final showPop = await showWarning(context);
        return showPop ?? false;
      },
      child: SafeArea(
        minimum: _notchController.hasNotchModlie
            ? const EdgeInsets.only(top: 30)
            : const EdgeInsets.only(top: 0),
        child: Scaffold(
          appBar: AppBar(
            title: OperatorNameHomeScreen(),
            // const Text(
            //   'Mathemarics ',
            //   style: TextStyle(fontSize: 30),
            // ),
            // actions: [
            //   Padding(
            //       padding: EdgeInsets.symmetric(horizontal: 20),
            //       child: IconButton(
            //           onPressed: () {}, icon: Icon(Icons.light_mode_outlined))
            //       // Icon(Icons.light_mode_outlined),

            //       )
            // ],
            backgroundColor: appBarColor,
            // elevation: 0,
          ),
          // drawer: Drawer(
          //   child: ListView(
          //     children: [
          //       DrawerHeader(
          //         decoration: BoxDecoration(
          //           color: Colors.orangeAccent,
          //         ),
          //         child: Column(
          //           children: [
          //             ClipRRect(
          //               child: Image.asset(
          //                 'images/sub.jpeg',
          //                 height: 100,
          //                 width: 100,
          //               ),
          //               borderRadius: BorderRadius.all(Radius.circular(50)),
          //             ),
          //             Padding(
          //               padding: EdgeInsets.only(top: 10),
          //               child: Text(
          //                 'Venkatesh Rathod',
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //       Column(
          //         children: [
          //           ListTile(
          //             title: Text('Home'),
          //             leading: Icon(Icons.home),
          //             // onTap: () {
          //             //   setState(() {
          //             //     homein = home();
          //             //   });
          //             // },
          //           ),
          //           ListTile(
          //             title: Text('Account'),
          //             leading: Icon(Icons.account_box),
          //           ),
          //           ListTile(
          //             title: Text('Card'),
          //             leading: Icon(Icons.shopping_cart),
          //           ),
          //           ListTile(
          //             title: Text('Logout'),
          //             leading: Icon(Icons.logout),
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          body: Container(
            height: _myHight,
            width: _myWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.jpeg'),
                  fit: BoxFit.fill),
            ),
            child: SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Center(child: OperatorNameHomeScreen()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          // Image of  Addition
                          child: GestureDetector(
                            onTap: (() {
                              _levelController.addition = true;
                              Get.to(() {
                                return const LevelScreen();
                              });
                            }),
                            child: OperatorSymbol(
                              symobleOperatorName: 'Addition',
                              url: 'images/addition2.jpg',
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            _levelController.subtraction = true;
                            Get.to(() {
                              return const LevelScreen();
                            });
                          }),
                          child: OperatorSymbol(
                            symobleOperatorName: 'Subtraction',
                            url: 'images/sub2.jpg',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (() {
                            _levelController.division = true;
                            Get.to(() {
                              return const LevelScreen();
                            });
                          }),
                          child: OperatorSymbol(
                            symobleOperatorName: 'Division',
                            url: 'images/div2.jpg',
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            _levelController.mliplication = true;
                            Get.to(() {
                              return const LevelScreen();
                            });
                          }),
                          child: OperatorSymbol(
                            symobleOperatorName: 'Multiplication',
                            url: 'images/mulit2.jpg',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

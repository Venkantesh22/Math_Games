import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:get/get.dart';
import 'package:maths_games/constant/color.dart';
import 'package:maths_games/controller/notch_controller.dart';
import 'package:maths_games/screen/home_screem/home_screen.dart';

Future main() async {
  final notchController = Get.put(NotchController());

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersiveSticky,
  );

  runApp(MyApp());
  if (Device.get().hasNotch) {
    notchController.hasNotchModlie = true;
    print("Device have notch = ${notchController.hasNotchModlie}");
  } else {
    print("Device not have notch = ${notchController.hasNotchModlie}");
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Change themesMode.instead of theme

      title: 'Math Games',
      theme: ThemeData(
        primaryColor: MulityColorbackground,
      ),
      debugShowCheckedModeBanner: false,
      home: home_Screen(),
    );
  }
}

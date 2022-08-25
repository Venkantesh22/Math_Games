import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maths_games/controller/number_generator.dart';

class OperatorSymbol extends StatelessWidget {
  final ranNumController = Get.put(Controller());

  final String symobleOperatorName;
  final String url;
  OperatorSymbol({
    Key? key,
    required this.symobleOperatorName,
    required this.url,
  })  : assert(url != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var _myWidth = MediaQuery.of(context).size.width;
    var _myHight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      // child: GestureDetector(
      //   onTap: () {
      //     Get.to(
      //       () {
      //         ranNumController.randomNum();
      //         return EasyLevelScreen();
      //       },
      //     );
      //   },
      child: Column(
        children: [
          Container(
            height: 240,
            // width: 160,
            width: _myWidth * 0.40,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              url,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              symobleOperatorName,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
      // ),
    );
  }
}

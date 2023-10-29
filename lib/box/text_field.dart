import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final TextEditingController controller;
  final String unit;
  TextFields({
    Key? key,
    required this.controller,
    required this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 95,
        decoration: BoxDecoration(color: Color.fromARGB(255, 141, 203, 255)),
        child: TextField(
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 50,
            fontFamily: 'Lora',
            // fontWeight: FontWeight.w700,
          ),
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: unit,
            hintStyle: const TextStyle(
              color: Colors.white30,
              fontSize: 50,
              fontFamily: 'Lora',
              // fontWeight: FontWeight.w700,
            ),
          ),
        ));
  }
}

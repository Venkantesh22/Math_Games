import 'package:flutter/material.dart';
import 'package:get/get.dart';

class inputController extends GetxController {
  static input() {
    final _text = TextEditingController();
    return TextField(
      keyboardType: TextInputType.number,
      controller: _text,
      decoration: InputDecoration(),
    );
  }
}

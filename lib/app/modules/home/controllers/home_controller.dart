import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  void increment() {
    count.value++;
  }

  void decrement() {
    count.value--;
  }

  void reset() {
    count.value = 0;
  }

  static const List<Color> colors = [
    Colors.red,
    Colors.yellowAccent,
    Colors.amberAccent,
    Colors.orange,
    Colors.green,
    Colors.yellow,
    Colors.deepOrange,
    Colors.grey,
    Colors.indigoAccent,
    Colors.lightBlue,
    Colors.orangeAccent,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.orangeAccent,
  ];
}

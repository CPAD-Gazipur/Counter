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
    // Colors.green,
    Colors.blue,
    // Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    // Colors.teal,
    // Colors.cyan,
    Colors.indigo,
    // Colors.lime,
    // Colors.amber,
    // Colors.lightGreen,
    Colors.deepOrange,
    // Colors.brown,
    Colors.grey,
    Colors.indigoAccent,
    Colors.lightBlue,
    Colors.deepPurple,
    Colors.blueAccent,
    // Colors.greenAccent,
    Colors.redAccent,
    // Colors.yellowAccent,
    Colors.orangeAccent,
    // Colors.pinkAccent,
    // Colors.tealAccent,
    // Colors.cyanAccent,
    // Colors.black,
    // Colors.white,
  ];
}

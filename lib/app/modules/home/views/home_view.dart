import 'dart:ui';

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sound/app/modules/home/views/sura_list_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff240046),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Tozbi Counter",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 1000,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFA450E4),
                  width: 5,
                ),
              ),
              child: Center(
                child: Obx(
                  () => AnimatedFlipCounter(
                    value: controller.count.value,
                    textStyle: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 8,
                      color: HomeController.colors[controller.count.bitLength],
                      shadows: [
                        BoxShadow(
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      shadowColor: Color(0xff00043a),
                      primary: Color(0xFF2d00f7),
                      padding: EdgeInsets.all(25),
                      side: BorderSide(
                        color: Color(0xFF000000),
                        width: 5,
                      ),
                    ),
                    onPressed: () {
                      controller.increment();
                    },
                    child: Text(
                      "+",
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      shadowColor: Color(0xff00043a),
                      primary: Color(0xFF2d00f7),
                      padding: EdgeInsets.all(25),
                      side: BorderSide(
                        color: Color(0xFF000000),
                        width: 5,
                      ),
                    ),
                    onPressed: () {
                      controller.decrement();
                    },
                    child: Text(
                      "-",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff2d00f7),
                padding: EdgeInsets.all(25),
                side: BorderSide(
                  color: Colors.black,
                  width: 5,
                ),
              ),
              onPressed: () {
                controller.reset();
              },
              child: Text("Reset"),
            ),
            SizedBox(
              height: 180,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffe94900),
                padding: EdgeInsets.all(25),
                side: BorderSide(
                  color: Colors.black,
                  width: 5,
                ),
              ),
              onPressed: () {
                Get.to(SuraListView());
              },
              child: Text(
                "List of Suras",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

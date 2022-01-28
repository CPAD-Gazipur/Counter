import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sound/app/modules/home/views/sura_list_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Obx(
              () => Text(
                controller.count.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
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
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                controller.reset();
              },
              child: Text("Reset"),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
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

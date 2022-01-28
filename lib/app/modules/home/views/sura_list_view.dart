import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sound/app/modules/home/controllers/home_controller.dart';
import 'package:sound/app/routes/app_pages.dart';

class SuraListView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SuraListView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 1; i <= 20; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.HOME, arguments: i);
                  },
                  child: Container(
                    height: 60,
                    child: Center(
                      child: Text('Sura $i'),
                    ),
                    decoration: BoxDecoration(
                      gradient: SweepGradient(
                        center: FractionalOffset.topRight,
                        startAngle: 2,
                        endAngle: 5,
                        colors: const <Color>[
                          Colors.greenAccent, // blue
                          Colors.white,
                        ],
                        stops: const <double>[0.0, 0.5],
                      ),
                      color: Colors.white,
                      border: Border.all(
                        color: HomeController.colors[i % 14],
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

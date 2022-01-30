import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sound/app/modules/home/controllers/home_controller.dart';
import 'package:sound/app/routes/app_pages.dart';

//
//
//
class SuraListView extends GetView<HomeController> {
  //
  //
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff240046),
      appBar: AppBar(
        title: Text(
          'List of Duas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        backgroundColor: Color(0xff240046),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 1; i <= 20; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  //
                  //
                  //
                  onTap: () {
                    controller.selected.value = i;
                    Get.back();
                  },
                  //
                  //
                  //
                  child: SingleChildScrollView(
                    child: Container(
                      height: 180,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Dua $i',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                HomeController.duaList[i % 20],
                                style: TextStyle(
                                  color: Colors.white,
                                  // fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        gradient: SweepGradient(
                          center: FractionalOffset.topRight,
                          startAngle: 2,
                          endAngle: 5,
                          colors: const <Color>[
                            Color(0xff240046),
                            Color(0xff97dffc),
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
                ),
              )
          ],
        ),
      ),
    );
  }
}

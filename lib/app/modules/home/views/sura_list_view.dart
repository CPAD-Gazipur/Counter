import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sound/app/modules/home/controllers/home_controller.dart';

class SuraListView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfffc),
      appBar: AppBar(
        title: Text(
          'List of Duas',
          style: TextStyle(
            color: Color(0xff007200),
            fontSize: 30,
          ),
        ),
        backgroundColor: Color(0xfffdfffc),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //
            //
            //
            //
            for (int i = 0; i <= 19; i++)
              //
              //
              //
              //
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    controller.selected.value = i;
                    Get.back();
                  },
                  child: SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Dua ${i + 1}',
                                style: TextStyle(
                                  color: Color(
                                    0xff000000,
                                  ),
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
                                  color: Color(
                                    0xffffffff,
                                  ),
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
                            Color(
                              0xff38b000,
                            ),
                            Color(
                              0xff006400,
                            ),
                          ],
                          stops: const <double>[0.0, 0.5],
                        ),
                        color: Color(
                          0xffffffff,
                        ),
                        border: Border.all(
                          color: HomeController.colors[i % 13],
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

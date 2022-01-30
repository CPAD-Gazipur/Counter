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
        child: SingleChildScrollView(
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
              //
              //Selected sura container
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF7709DD), width: 5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dua",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Obx(
                        () => Center(
                          child: Text(
                            controller.suras[controller.selected.value]
                                .toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),

              //
              //
              //(Reset Button)(Text)((+)&(-) Button)

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        //
                        //Reset Button

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
                          width: 80,
                        ),

                        //
                        //Changable Text Container

                        Container(
                          height: 100,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                                  color: HomeController
                                      .colors[controller.count.bitLength],
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
                          width: 80,
                        ),

                        //
                        //(+)&(-) Column

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //
                            //(+) Button

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
                              height: 25,
                            ),

                            //
                            //(-) Button

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
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 180,
              ),

              //Dua List Button
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
                  "List of Duas",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

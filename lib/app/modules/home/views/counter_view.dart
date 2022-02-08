import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound/app/modules/home/controllers/home_controller.dart';
import 'package:sound/app/modules/home/views/sura_list_view.dart';

class CounterView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfffc),
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
                  color: Color(0xff006400),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //
              //Selected sura container
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF006400),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dua",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff004b23),
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
                              color: Color(0xFFff002b),
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

                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 20,
                                shadowColor: Color(0xffff002b),
                                primary: Color(0xffff002b),
                                padding: EdgeInsets.all(15),
                                side: BorderSide(
                                  color: Color(0xffff002b),
                                  width: 5,
                                ),
                              ),
                              onPressed: () {
                                controller.reset();
                              },
                              child: Text("Reset"),
                            ),
                            SizedBox(
                              height: 29,
                            ),

                            //
                            //(-) Button

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 20,
                                shadowColor: Color(0xFF007200),
                                primary: Color(0xFF007200),
                                padding: EdgeInsets.all(10),
                                side: BorderSide(
                                  color: Color(0xFF007200),
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
                        SizedBox(
                          width: 9,
                        ),

                        //
                        //Changable Text Container

                        Container(
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color(0xff0a0908),
                              width: 5,
                            ),
                          ),
                          child: Center(
                            child: Obx(
                              () => AnimatedFlipCounter(
                                value: controller.count.value,
                                textStyle: TextStyle(
                                  fontSize: 60,
                                  letterSpacing: 0.3,
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
                          width: 20,
                        ),

                        //
                        //(+) Button

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 20,
                            shadowColor: Color(0xFF008000),
                            primary: Color(0xFF008000),
                            padding: EdgeInsets.all(10),
                            side: BorderSide(
                              color: Color(0xFF008000),
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
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 100,
              ),

              //Dua List Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff6f4518),
                  padding: EdgeInsets.all(15),
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

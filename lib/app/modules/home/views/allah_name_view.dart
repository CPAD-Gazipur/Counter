import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sound/app/modules/home/controllers/home_controller.dart';

class AllahNameView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xffffffff,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Allah's 99 names",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xff007200,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 50,
                  runSpacing: 20,
                  children: [
                    //Used for loop for container
                    for (int i = 0; i <= 98; i++)
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                "(${i + 1})",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffffffffff),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Text(
                                "${HomeController.allahnames[i % 99]}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(
                            0xff007200,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sound/app/modules/home/controllers/home_controller.dart';

class AllahNameView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
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
                    color: Color(0xff007200),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 50,
                  runSpacing: 20,
                  children: [
                    for (int i = 0; i < 98; i++)
                      Container(
                        height: 30,
                        width: 100,
                        child: Center(
                          child: Text(
                            "(${i + 1}) ${HomeController.allahnames[i % 99]}",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffffff),
                            ),
                          ),
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

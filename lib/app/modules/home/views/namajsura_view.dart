import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sound/app/modules/home/controllers/home_controller.dart';

class NamajsuraView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 30.0,
            bottom: 16.0,
          ),
          child: Column(
            children: [
              Text(
                "নামাজের কিছু গুরুত্বপূর্ণ সূরা",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff006400),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              for (int i = 0; i <= 8; i++)
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      color: Color(0xff006400),
                      child: Text(
                        "${i + 1}. ${HomeController.namajsura[i % 9]}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

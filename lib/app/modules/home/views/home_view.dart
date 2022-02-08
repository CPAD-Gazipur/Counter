import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound/app/routes/app_pages.dart';

class HomeView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "ISLAMIC APP",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff007200),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                child: Wrap(
                  spacing: 45,
                  runSpacing: 45,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.COUNTER);
                      },
                      child: Text(
                        "Counter",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        primary: Color(0xff006400),
                        splashFactory: InkRipple.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(0xff008000),
                          width: 5,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Page 2",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        primary: Color(0xff006400),
                        splashFactory: InkRipple.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(0xff008000),
                          width: 5,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Page 3",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        primary: Color(0xff006400),
                        splashFactory: InkRipple.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(0xff008000),
                          width: 5,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        " Page 4",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        primary: Color(0xff006400),
                        splashFactory: InkRipple.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(0xff008000),
                          width: 5,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        " Page 5",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        primary: Color(0xff006400),
                        splashFactory: InkRipple.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(0xff008000),
                          width: 5,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        " Page 6",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        primary: Color(0xff006400),
                        splashFactory: InkRipple.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(0xff008000),
                          width: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound/app/routes/app_pages.dart';

class HomeView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 5.0,
        backgroundColor: Color(0xffffffff),
        shadowColor: Color(0xffffffff),
        title: Text(
          "ISLAMIC APP",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(
              0xff007200,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.portrait,
              color: Color(0xff007200),
              size: 30.0,
            ),
            onPressed: () {
              Get.toNamed(Routes.ABOUT);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                        "তযবি করুন",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        primary: Color(
                          0xff006400,
                        ),
                        splashFactory: InkRipple.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(
                            0xff008000,
                          ),
                          width: 5,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.ALLAHNAME);
                      },
                      child: Text(
                        "আল্লাহ্‌র ৯৯ নাম",
                        style: TextStyle(
                          fontSize: 15.5,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        primary: Color(
                          0xff006400,
                        ),
                        splashFactory: InkRipple.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(
                            0xff008000,
                          ),
                          width: 5,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.NAMAJDUA);
                      },
                      child: Text(
                        "নামাজের দোয়া",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        primary: Color(
                          0xff006400,
                        ),
                        splashFactory: InkRipple.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(
                            0xff008000,
                          ),
                          width: 5,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.NAMAJSURA);
                      },
                      child: Text(
                        "নামাজের সূরা",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(30),
                        primary: Color(
                          0xff006400,
                        ),
                        splashFactory: InkRipple.splashFactory,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(
                            0xff008000,
                          ),
                          width: 5,
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     " Page 5",
                    //     style: TextStyle(
                    //       fontSize: 20,
                    //     ),
                    //   ),
                    //   style: ElevatedButton.styleFrom(
                    //     padding: EdgeInsets.all(30),
                    //     primary: Color(
                    //       0xff006400,
                    //     ),
                    //     splashFactory: InkRipple.splashFactory,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //     side: BorderSide(
                    //       color: Color(
                    //         0xff008000,
                    //       ),
                    //       width: 5,
                    //     ),
                    //   ),
                    // ),
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     " Page 6",
                    //     style: TextStyle(
                    //       fontSize: 20,
                    //     ),
                    //   ),
                    //   style: ElevatedButton.styleFrom(
                    //     padding: EdgeInsets.all(30),
                    //     primary: Color(
                    //       0xff006400,
                    //     ),
                    //     splashFactory: InkRipple.splashFactory,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //     side: BorderSide(
                    //       color: Color(
                    //         0xff008000,
                    //       ),
                    //       width: 5,
                    //     ),
                    //   ),
                    // ),
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

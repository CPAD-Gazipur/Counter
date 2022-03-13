import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound/app/global_widgets/button/page_button.dart';
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
                    Button(
                      onpress: () {
                        Get.toNamed(Routes.COUNTER);
                      },
                      text: "তযবি করুন",
                    ),
                    Button(
                      onpress: () {
                        Get.toNamed(Routes.ALLAHNAME);
                      },
                      text: "আল্লাহ্‌র ৯৯ নাম",
                    ),
                    Button(
                      onpress: () {
                        Get.toNamed(Routes.NAMAJDUA);
                      },
                      text: "নামাজের দোয়া",
                    ),
                    Button(
                      onpress: () {
                        Get.toNamed(Routes.NAMAJSURA);
                      },
                      text: "নামাজের সূরা",
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

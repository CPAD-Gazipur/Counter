import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yeaseen Ahmed's Information",
          style: TextStyle(
            color: Color(0xff007200),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffffffff),
        shadowColor: Color(0xffffffff),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserProfileAvatar(
              avatarUrl:
                  'G:/git repository/CPAD-Gazipur/Counter/assets/WIN_20201222_11_34_21_Pro (2).jpg',
              avatarSplashColor: Color(0xff007200),
              radius: 100,
              isActivityIndicatorSmall: false,
              avatarBorderData: AvatarBorderData(
                borderColor: Colors.white,
                borderWidth: 5.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

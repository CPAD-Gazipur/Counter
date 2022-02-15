import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

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
            color: Color(0xffffffff),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff007200),
        shadowColor: Color(0xff007200),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Web Developer::[Yeaseen Ahmed]",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserProfileAvatar(
                  avatarUrl:
                      'https://avatars.githubusercontent.com/u/92775489?v=4',
                  avatarSplashColor: Color(0xff007200),
                  radius: 100,
                  isActivityIndicatorSmall: false,
                  avatarBorderData: AvatarBorderData(
                    borderColor: Colors.white,
                    borderWidth: 5.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Yeaseen Ahmed",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff007200),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Color(0xff007200),
                              size: 30,
                            ),
                            Text(
                              " shekhyeaseen@gmail.com",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Color(0xff007200),
                              size: 30,
                            ),
                            Text(
                              "01720637100 , 01712700477",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xff007200),
                              size: 30,
                            ),
                            Text(
                              "Hakkani,Gazipur,Bangladesh",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Visit me on ::",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    letterSpacing: 1.5,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.github,
                    color: Color(0xff007200),
                    size: 30,
                  ),
                  onPressed: () {
                    launch("https://github.com/yeaseen-564");
                  },
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.facebook,
                    color: Color(0xff007200),
                    size: 30,
                  ),
                  onPressed: () {
                    launch("https://www.facebook.com/yeaseen.ahmed.75");
                  },
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.linkedin,
                    color: Color(0xff007200),
                    size: 30,
                  ),
                  onPressed: () {
                    launch(
                        "https://www.linkedin.com/in/yeaseen-ahmed-77bb98231/");
                  },
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    color: Color(0xff007200),
                    size: 30,
                  ),
                  onPressed: () {
                    launch("https://www.instagram.com/yeaseenahmed37/");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

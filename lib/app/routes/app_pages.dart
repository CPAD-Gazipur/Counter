import 'package:get/get.dart';
import 'package:sound/app/modules/home/views/login_view.dart';
import 'package:sound/app/modules/home/views/register_view.dart';

import '../modules/about/bindings/about_binding.dart';
import '../modules/about/views/about_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/allah_name_view.dart';
import '../modules/home/views/counter_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/namajdua_view.dart';
import '../modules/home/views/namajsura_view.dart';
import '../modules/home/views/sura_list_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SURALIST,
      page: () => SuraListView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER,
      page: () => CounterView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ALLAHNAME,
      page: () => AllahNameView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAMAJDUA,
      page: () => NamajduaView(),
    ),
    GetPage(
      name: _Paths.NAMAJSURA,
      page: () => NamajsuraView(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      // binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      // binding: AboutBinding(),
    ),
  ];
}

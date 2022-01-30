import 'package:get/get.dart';
import 'package:sound/app/modules/home/views/sura_list_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

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
  ];
}

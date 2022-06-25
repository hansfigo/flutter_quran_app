import 'package:get/get.dart';

import '../modules/Introduction/bindings/introduction_binding.dart';
import '../modules/Introduction/views/introduction_view.dart';
import '../modules/detailSurah_page/bindings/detail_surah_page_binding.dart';
import '../modules/detailSurah_page/views/detail_surah_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';
import '../modules/surah_page/bindings/surah_page_binding.dart';
import '../modules/surah_page/views/surah_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => const IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.SURAH_PAGE,
      page: () => SurahPageView(),
      binding: SurahPageBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_SURAH_PAGE,
      page: () =>  DetailSurahPageView(),
      binding: DetailSurahPageBinding(),
    ),
  ];
}

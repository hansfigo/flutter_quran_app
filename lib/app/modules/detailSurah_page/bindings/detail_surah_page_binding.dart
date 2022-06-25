import 'package:get/get.dart';

import '../controllers/detail_surah_page_controller.dart';

class DetailSurahPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailSurahPageController>(
      () => DetailSurahPageController(),
    );
  }
}

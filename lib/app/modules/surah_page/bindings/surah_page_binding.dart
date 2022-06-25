import 'package:get/get.dart';

import '../controllers/surah_page_controller.dart';

class SurahPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SurahPageController>(
      () => SurahPageController(),
    );
  }
}

import 'dart:async';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashscreenController extends GetxController{
  @override
  void onInit() {
    _runSplash();
    super.onInit();
  }

  void _runSplash() {
    Timer(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.INTRODUCTION);
    });
  }
}

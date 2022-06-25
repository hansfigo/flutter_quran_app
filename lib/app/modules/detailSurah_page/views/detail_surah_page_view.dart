import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quran_app/app/data/models/surah.dart';

import '../controllers/detail_surah_page_controller.dart';

class DetailSurahPageView extends GetView<DetailSurahPageController> {
  final Surah surah = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SURAH ${surah.name?.transliteration?.id?.toUpperCase()}'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailSurahPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

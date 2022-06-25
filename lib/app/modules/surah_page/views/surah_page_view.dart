import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quran_app/app/routes/app_pages.dart';

import '../../../data/models/surah.dart';
import '../controllers/surah_page_controller.dart';

class SurahPageView extends GetView<SurahPageController> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Surah'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<Surah>>(
          future: controller.getAllSurah(),
          builder: (context, Snapshot) {
            if (Snapshot.connectionState == ConnectionState.waiting){
              return CircularProgressIndicator();
            }
            if(!Snapshot.hasData){

            }
            return ListView.builder(
              itemCount: Snapshot.data?.length,
              itemBuilder: (context, index) {
              Surah surah = Snapshot.data![index];
              return ListTile(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_SURAH_PAGE, arguments: surah);
                },
                leading: CircleAvatar(
                  child: Text("${surah.number}"),
                ),
                title: Text("${surah.name?.transliteration?.id}"),
                subtitle: Text('${surah.numberOfVerses} ayat | ${surah.revelation?.id} '),
              );
            },);
          }
        )
      ),
    );
  }
}

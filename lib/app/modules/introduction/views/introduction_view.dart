import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quran_app/app/routes/app_pages.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Quran App',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              Text('"Sempatkan baca al-quran walau 1 ayat per-hari"'),
              Expanded(child: Container()),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: SizedBox(
                      height: 40,
                      width: 120,
                      child: FlatButton(
                          shape: (RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                              )),
                          color: Colors.blue,
                          onPressed: () {
                            Get.offNamed(Routes.SURAH_PAGE);
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                  Text(
                    'Dibuat oleh HomuHomu dengan Flutter + Get X State Manager',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

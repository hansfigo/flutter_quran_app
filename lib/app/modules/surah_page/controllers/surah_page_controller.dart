import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quran_app/app/data/models/surah.dart';

class SurahPageController extends GetxController {
   
  Future <List<Surah>> getAllSurah () async{
      Uri url = Uri.parse('https://api.quran.sutanlab.id/surah');
    var res = await http.get(url);

    List? data = (json.decode(res.body) as Map<String, dynamic>) ["data"];

    if(data == null || data.isEmpty){
      return []; 
    }else{
      return data.map((e) => Surah.fromJson(e)).toList();  
    }
    print(data);
   }
}

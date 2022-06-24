import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quran_app/app/data/models/detailSurah.dart';
import 'package:quran_app/app/data/models/surah.dart';

void main() async {
  Uri url = Uri.parse('https://api.quran.sutanlab.id/surah');
  var res = await http.get(url);

  List data = (json.decode(res.body)as Map<String, dynamic>) ["data"];

  //data dari API(Raw Data) -> Model yang sudah dibuat
  Surah surahAnnas = Surah.fromJson(data[113]);

  // print(surahAnnas.tafsir);

  //Detail Surah
  Uri urlAnnas = Uri.parse('https://api.quran.sutanlab.id/surah/114');
  var resAnnas = await http.get(urlAnnas);

  Map<String, dynamic> dataAnnas = (jsonDecode(resAnnas.body) as Map<String, dynamic>)['code'];

  DetailSurah detailAnnas = DetailSurah.fromJson(dataAnnas);

  print(detailAnnas.name?.transliteration?.id);
}
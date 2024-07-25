import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../modal/shlokModal.dart';

class Gitaprovider extends ChangeNotifier {
  bool isDark = false;
  void ChangeTheme() {
    isDark = !isDark;
    notifyListeners();
  }

  List<GitaModal> Gitalist = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/sholk.json');
    List photo = jsonDecode(json);
    Gitalist = photo.map((e) => GitaModal.fromJson(e)).toList();
    notifyListeners();
  }

  Gitaprovider() {
    jsonParsing();
  }
}

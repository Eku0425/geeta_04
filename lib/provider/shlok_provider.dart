import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../modal/shlokModal.dart';

class GitaProvider extends ChangeNotifier {
  List<GitaModal> gitaModalList = [];

  get isDark => false;

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/sholk.json');
    List response = jsonDecode(json);
    gitaModalList = response
        .map(
          (e) => GitaModal.fromJson(e),
        )
        .toList();
    notifyListeners();
  }

  GitaProvider() {
    jsonParsing();
  }
}

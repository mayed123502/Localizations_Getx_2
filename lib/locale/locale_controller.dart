import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learn_getx/main.dart';

class MyLocaleController extends GetxController {

  void changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    shaedpref.setString("curruntLang", codeLang);
    Get.updateLocale(locale);
  }
}

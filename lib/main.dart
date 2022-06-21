// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:learn_getx/views/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'locale/locale.dart';
import 'locale/locale_controller.dart';

late SharedPreferences shaedpref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  shaedpref = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MyLocaleController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: shaedpref.getString("curruntLang") == null
          ? Get.deviceLocale
          : Locale(shaedpref.getString("curruntLang")!),
      translations: MyLocale(),
      getPages: [
        GetPage(
          name: "/",
          page: () => Home(),
        ),
      ],
    );
  }
}

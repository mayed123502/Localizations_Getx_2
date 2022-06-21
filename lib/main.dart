// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:learn_getx/views/home.dart';

import 'locale/locale.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: Get.deviceLocale,
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

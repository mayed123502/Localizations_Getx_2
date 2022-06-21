// ignore_for_file: prefer_final_fields, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1".tr)),
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Center(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.green,
              child:  Text("2".tr),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.green,
              child:  Text("3".tr),
            ),
          ),
        ],
      ),
    );
  }
}

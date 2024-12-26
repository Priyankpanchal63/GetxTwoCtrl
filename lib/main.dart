import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtwoctrl/themeCtrl.dart';

import 'HomeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light, // Default to light mode
      home: HomeScreen(),
      initialBinding: BindingsBuilder(() {
        Get.put(ThemeController());
      }),
    );
  }
}
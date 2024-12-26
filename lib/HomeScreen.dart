import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtwoctrl/themeCtrl.dart';
import 'counte_screen.dart';


import 'counter_controller.dart';
import 'item_list_controller.dart';
import 'messageScreen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    final MessageController messageController = Get.put(MessageController());
    final ThemeController themeController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_4),
            onPressed: () {
              // Toggle theme
              themeController.isDarkTheme.value = !themeController.isDarkTheme.value;
              Get.changeThemeMode(
                  themeController.isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              'Counter: ${counterController.counter}',
              style: TextStyle(fontSize: 24),
            )),
            SizedBox(height: 20),
            Obx(() => Text(
              'Message: ${messageController.message}',
              style: TextStyle(fontSize: 24),
            )),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Get.to(CounterScreen()),
              child: Text('Go to Counter Screen'),
            ),
            ElevatedButton(
              onPressed: () => Get.to(MessageScreen()),
              child: Text('Go to Message Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

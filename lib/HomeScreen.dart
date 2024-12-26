import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counte_screen.dart';
import 'counter_controller.dart';
import 'item_list_controller.dart';
import 'messageScreen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    final MessageController messageController = Get.put(MessageController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
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

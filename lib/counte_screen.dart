import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';


class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              'Counter: ${counterController.counter}',
              style: TextStyle(fontSize: 24),
            )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: counterController.increment,
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}

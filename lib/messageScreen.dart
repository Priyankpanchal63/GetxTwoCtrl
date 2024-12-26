import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'item_list_controller.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MessageController messageController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Message Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              'Message: ${messageController.message}',
              style: TextStyle(fontSize: 24),
            )),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) => messageController.updateMessage(value),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter a new message',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

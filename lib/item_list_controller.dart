import 'package:get/get.dart';

class MessageController extends GetxController {
  var message = 'Hello, GetX!'.obs;

  void updateMessage(String newMessage) {
    message.value = newMessage;
  }
}

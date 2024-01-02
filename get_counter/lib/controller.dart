import 'package:get/get.dart';

class MyHomePageController extends GetxController {
  int count = 0;
  increment() {
    count++;
    update();
  }
}

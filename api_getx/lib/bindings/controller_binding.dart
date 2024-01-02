import 'package:api_getx/controller/ctrl.user.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController());
  }
}

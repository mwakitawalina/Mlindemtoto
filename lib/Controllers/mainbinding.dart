//import 'package:garage/controllers/auth_controller.dart';
import 'package:get/get.dart';

import 'auth_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}

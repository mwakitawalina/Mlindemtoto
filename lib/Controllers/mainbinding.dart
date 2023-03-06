
import 'package:get/get.dart';
import 'package:mlindemtoto/Controllers/auth_controller.dart';

//import 'authcontroller_alt.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
    
  }
}

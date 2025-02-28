import 'package:get/get.dart';
import 'package:toyland_mobile/presentation/controllers/auth_controller.dart';

class LoginBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
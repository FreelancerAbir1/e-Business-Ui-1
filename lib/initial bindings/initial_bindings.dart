import 'package:flutter_application_1/auth%20screens/create%20user%20screen/controller/create_user_screen_controller.dart';
import 'package:flutter_application_1/auth%20screens/forgot%20screen/controller/forgot_screen_controller.dart';
import 'package:flutter_application_1/auth%20screens/login%20screen/controller/login_screen_controller.dart';
import 'package:flutter_application_1/screens/bottom%20nav/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';
import '../consts/consts.dart';
class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());
    Get.lazyPut<ForgotScreenController>(() => ForgotScreenController());
    Get.lazyPut<CreateUserScreenController>(() => CreateUserScreenController());
    Get.lazyPut<BottomNavBarController>(() => BottomNavBarController());
  }
}

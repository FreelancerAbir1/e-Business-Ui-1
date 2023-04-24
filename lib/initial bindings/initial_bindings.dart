import 'package:flutter_application_1/screens/home%20screen/controller/home_controller.dart';
import 'package:get/get.dart';
import '../consts/consts.dart';
 class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());
    Get.lazyPut<ForgotScreenController>(() => ForgotScreenController());
    Get.lazyPut<CreateUserScreenController>(() => CreateUserScreenController());
    Get.lazyPut<BottomNavBarController>(() => BottomNavBarController());
    Get.lazyPut<ForgotScreenController>(() => ForgotScreenController());
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  }
}

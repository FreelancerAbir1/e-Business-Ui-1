import 'dart:async';

import 'package:flutter_application_1/screens/bottom%20nav/bottom_nav.dart';
import 'package:get/get.dart';

import '../../../consts/consts.dart';

class CreateUserScreenController extends GetxController {
  ///focusNode here
  final FocusNode nameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode retypePasswordFocus = FocusNode();
  ///is signUp button is active bool
  RxBool isActive = false.obs;
  //form key
  final formKey = GlobalKey<FormState>();
  //TextEditing controller here
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController reTypePassword = TextEditingController();
  //isVisible
  RxBool isVisible = false.obs;
  RxBool isVisiblee = false.obs;
  //Create use method here
  Future createUserWithEmailAndPassword() async {
    ///Loading method start and after 10 secound stop automatically
    await EasyLoading.show(status: creatingAccount)
        .then((value) => Timer(const Duration(seconds: 10), () {
              EasyLoading.dismiss();
            }));
    try {
      if (email.text.isNotEmpty && password.text == reTypePassword.text) {
        final result = await auth.createUserWithEmailAndPassword(
            email: email.text.trim(), password: password.text.trim());
        if (result.user != null) {
          adduserData();
        }
      } else if (email.text.isNotEmpty &&
          password.text != reTypePassword.text) {
        EasyLoading.showError(passwordNotMatch);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        EasyLoading.showError('weak-password');
      } else if (e.code == 'email-already-in-use') {
        EasyLoading.showError('weak-email already in use');
      } else {
        EasyLoading.showError(e.message.toString());
      }
    }
  }
  Future adduserData() async {
    return usersDataCollection.add({
      'name': name.text.trim().toString(),
      'email': email.text.trim().toString(),
      'password': password.text.trim().toString()
    }).then((value) {
      Get.offAllNamed(BottomNavBar.routeName);
      EasyLoading.showSuccess(accountCreatedSuccessfully);
    });
  }
}

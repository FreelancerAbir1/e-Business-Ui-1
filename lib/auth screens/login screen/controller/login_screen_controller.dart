import 'dart:async';
import 'package:get/get.dart';
import '../../../consts/consts.dart';

class LoginScreenController extends GetxController {
  //! focus method
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  // Here is  Global key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  //password obscure bool
  RxBool isVisiblity = false.obs;

  //TextEditing controller
  final email = TextEditingController(text: 'abir80503@gmail.com');
  final password = TextEditingController(text: 'abir80503');

// Sign in method here.This method provide firebase_auth.
// signInWithEmailAndPassword():

  Future signInWithEmailAndPassword() async {
    ///Loading method start and after 10 secound stop automatically
    await EasyLoading.show(status: 'loading...')
        .then((value) => Timer(const Duration(seconds: 10), () {
              EasyLoading.dismiss();
            }));
    try {
      ///here sign in method or login method
      if (email.text.isNotEmpty && password.text.isNotEmpty) {
        final result = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.text.trim(),
          password: password.text.trim(),
        );
        final User? user = result.user;
        if (user != null) {
          EasyLoading.showSuccess('Login Success');
          Get.offAllNamed(bottomNav);
        }
      } else if (password.text.isEmpty || password.text.isEmpty) {

        EasyLoading.showError('Black field not allow ');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        EasyLoading.showError('user-not-found');
      } else if (e.code == 'wrong-password') {
        EasyLoading.showError('wrong-password');
      } else {
        EasyLoading.showError(e.message.toString());
      }
    }
  }
}

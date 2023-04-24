import 'package:get/get.dart';

import '../../../consts/consts.dart';
import '../../../consts/services.dart';

class CreateUserScreenController extends GetxController {
  ///focusNode here
  final FocusNode nameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode retypePasswordFocus = FocusNode();

  ///is signUp button is active bool
  RxBool isActive = false.obs;

  ///form key
  final formKey = GlobalKey<FormState>();

  //TextEditing controller here
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController reTypePassword = TextEditingController();

  //isVisible
  RxBool isVisible = false.obs;

  ///Create use method here
  Future createUserWithEmailAndPassword() async {
    EasyLoading.show(status: creatingAccount);
    try {
      if (email.text.isNotEmpty && password.text == reTypePassword.text) {
        final result = await auth.createUserWithEmailAndPassword(
            email: email.text.trim(), password: password.text.trim());
        if (result.user != null) {
          Get.offAllNamed(bottomNav);
          EasyLoading.showSuccess('Account created successfully');
        }
      } else if (email.text.isNotEmpty &&
          password.text != reTypePassword.text) {
        EasyLoading.showError('Password not matched');
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
}

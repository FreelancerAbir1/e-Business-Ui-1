import 'package:get/get.dart';

import '../../../consts/consts.dart';

class ForgotScreenController extends GetxController {
  //Global formKey
  final formKey = GlobalKey<FormState>();
  //textEditing controller
  final email = TextEditingController();
//sendPasswordResetEmail method
 Future sendPasswordResetEmail() async {
   ///Loading method start and after 10 secound stop automatically
   await EasyLoading.show(status: sending)
       .then((value) => Timer(const Duration(seconds: 10), () {
     EasyLoading.dismiss();
   }));
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email.text)
          .then((value) {
        EasyLoading.showSuccess('Check your email');
      }).onError((error, stackTrace) {
        EasyLoading.showError('SomeThing went wrong!');
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        EasyLoading.showError('User not found');
      }
    }
  }
}

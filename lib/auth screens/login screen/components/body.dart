import 'package:flutter_application_1/auth%20screens/create%20user%20screen/create_user.dart';
import 'package:flutter_application_1/auth%20screens/login%20screen/controller/login_screen_controller.dart';
import 'package:flutter_application_1/screens/random%20widget/custom_button.dart';
import 'package:flutter_application_1/screens/random%20widget/custom_small_text.dart';
import 'package:flutter_application_1/screens/random%20widget/custom_text_field.dart';
import 'package:flutter_application_1/screens/random%20widget/random_medium_text.dart';
import 'package:flutter_application_1/screens/splash_screen/components/primary_icons.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../../../consts/consts.dart';
 import '../../../consts/validate_method.dart';

class Body extends GetView<LoginScreenController> {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(
          alignment: Alignment.topCenter,
          child: PrimaryIcons(),
        ),
        Positioned(
          top: 8.h,
          left: 10,
          right: 10,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            margin: EdgeInsets.all(kDefaultSize.sp),
            decoration: buildDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: kLightColor,
                radius: BorderRadius.circular(kDefaultSize.sp)),
            child: Padding(
              padding: EdgeInsets.all(kDefaultSize.sp),
              child: Form(
                key: controller.formKey,
                child: ListView(
                  children: [ SizedBox(height: 02.h),
                    CustomTextField(
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (v) {
                        FocusScope.of(context)
                            .requestFocus(controller.passwordFocus);
                      },
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (v) {
                        controller.formKey.currentState!.validate();
                      },
                      controller: controller.email,
                      focusNode: controller.emailFocus,
                      validator: validateEmail,
                      hint: enterEmail,
                      label: email,
                      sufficIcon: Icon(Icons.email),
                    ), SizedBox(height: 02.h),
                  Obx(() =>   CustomTextField(
                      obscureText: controller.isVisiblity.value,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (v) {
                        controller.formKey.currentState!.validate();
                      },
                      onFieldSubmitted: (v) {
                        FocusScope.of(context).unfocus();
                        if (controller.formKey.currentState!.validate()) {
                          controller.signInWithEmailAndPassword();
                        } else {
                          EasyLoading.showToast('Something error');
                        }
                      },
                      controller: controller.password,
                      focusNode: controller.passwordFocus,
                      validator: validatePassword,
                      hint: enterPassword,
                      label: password,
                      sufficIcon: IconButton(
                        onPressed: () {
                          controller.isVisiblity.value =
                              !controller.isVisiblity.value;
                        },
                        icon: controller.isVisiblity.value
                            ? Icon(Icons.visibility)
                            : Icon(
                                Icons.visibility_off,
                                color: kPrimaryColor,
                              ),
                      ),
                    ),), SizedBox(height: 02.h),
                    CustomMediumText(
                      onTap: () {

                      },
                      text: forgetPassword,
                      alignMent: Alignment.centerRight,
                    ), SizedBox(height: 02.h),
                    CustomButton(
                      onTap: () {
                        if (controller.formKey.currentState!.validate()) {
                          controller.signInWithEmailAndPassword();
                        } else {
                          EasyLoading.showToast('Something error');
                        }
                      },
                      text: login,
                      color: kPrimaryColor,
                    ), SizedBox(height: 02.h),
                    const CustomSmallText(
                        text: dontHaveAccount, alignMent: Alignment.center), SizedBox(height: 02.h),
                    CustomButton(
                      onTap: () {
                        Get.toNamed(CreateUserScreen.routeName);
                      },
                      text: signUP,
                      color: kPrimaryColor.shade200,
                    ),
                    SignInButton(
                      Buttons.google,
                      onPressed: () {},
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SignInButton(
                          Buttons.twitter,
                          mini: true,
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.gitHub,
                          mini: true,
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.facebook,
                          mini: true,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter_application_1/auth%20screens/forgot%20screen/forgot_screen.dart';
import 'package:get/get.dart';
import '../../../consts/consts.dart';

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
            height: MediaQuery.of(context).size.height * 0.7,
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
                  children: [
                    SizedBox(height: 02.h),
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
                    ),
                    SizedBox(height: 02.h),
                    Obx(() => CustomTextField(
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
                                ? Icon(Icons.visibility_off,
                                    color: kPrimaryColor)
                                : Icon(Icons.visibility)))),
                    SizedBox(height: 02.h),
                    CustomMediumText(
                      onTap: () {
                        Get.toNamed(ForgotScreen.routeName);
                      },
                      text: forgetPassword,
                      alignMent: Alignment.centerRight,
                    ),
                    SizedBox(height: 02.h),
                    CustomButton(
                      onTap: () {
                        if (controller.formKey.currentState!.validate()) {
                          controller.signInWithEmailAndPassword();
                        } else {
                          EasyLoading.showToast(blackFieldNotAllow);
                        }
                      },
                      text: login,
                      color: kPrimaryColor,
                    ),
                    SizedBox(height: 02.h),
                    const CustomSmallText(
                        text: dontHaveAccount, alignMent: Alignment.center),
                    SizedBox(height: 02.h),
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

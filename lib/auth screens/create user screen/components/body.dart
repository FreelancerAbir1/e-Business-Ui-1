import 'package:flutter/gestures.dart';
import 'package:flutter_application_1/auth%20screens/create%20user%20screen/controller/create_user_screen_controller.dart';
import 'package:flutter_application_1/auth%20screens/login%20screen/login_screen.dart';
import 'package:flutter_application_1/screens/random%20widget/custom_button.dart';
import 'package:flutter_application_1/screens/random%20widget/custom_text_field.dart';
import 'package:flutter_application_1/screens/splash_screen/components/primary_icons.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../consts/consts.dart';
import '../../../consts/validate_method.dart';

class Body extends GetView<CreateUserScreenController> {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(alignment: Alignment.topCenter, child: PrimaryIcons()),
        Positioned(
          top: 6.h,
          left: 10,
          right: 10,
          child: Container(
            height: Get.height * 0.7,
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
                    CustomTextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        onFieldSubmitted: (v) {
                          FocusScope.of(context)
                              .requestFocus(controller.emailFocus);
                        },
                        onChanged: (v) {
                          controller.formKey.currentState!.validate();
                        },
                        controller: controller.name,
                        focusNode: controller.nameFocus,
                        validator: validateName,
                        hint: enterName,
                        label: name,
                        sufficIcon: Icon(Icons.contact_page)),
                    SizedBox(height: 01.h),
                    CustomTextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (v) {
                          controller.formKey.currentState!.validate();
                        },
                        onFieldSubmitted: (v) {
                          FocusScope.of(context)
                              .requestFocus(controller.passwordFocus);
                        },
                        controller: controller.email,
                        focusNode: controller.emailFocus,
                        validator: validateEmail,
                        hint: enterEmail,
                        label: email,
                        sufficIcon: Icon(Icons.email)),
                    SizedBox(height: 01.h),
                    Obx(
                      () => CustomTextField(
                          obscureText: controller.isVisible.value,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.visiblePassword,
                          onFieldSubmitted: (v) {
                            FocusScope.of(context)
                                .requestFocus(controller.retypePasswordFocus);
                          },
                          onChanged: (v) {
                            controller.formKey.currentState!.validate();
                          },
                          controller: controller.password,
                          focusNode: controller.passwordFocus,
                          validator: validatePassword,
                          hint: enterPassword,
                          label: password,
                          sufficIcon: IconButton(
                              onPressed: () {
                                controller.isVisible.value =
                                    !controller.isVisible.value;
                              },
                              icon: controller.isVisible.value
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: kPrimaryColor,
                                    )
                                  : Icon(Icons.visibility))),
                    ),
                    SizedBox(height: 01.h),
                    Obx(() => CustomTextField(
                        obscureText: controller.isVisiblee.value,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.visiblePassword,
                        onChanged: (v) {
                          controller.formKey.currentState!.validate();
                        },
                        onFieldSubmitted: (v) {
                          FocusScope.of(context).unfocus();
                          if (controller.isActive.value) {
                            if (controller.formKey.currentState!.validate()) {
                              controller.createUserWithEmailAndPassword();
                            }
                          } else {
                            EasyLoading.showToast(
                                'Please agree term & condition');
                          }
                        },
                        controller: controller.reTypePassword,
                        focusNode: controller.retypePasswordFocus,
                        validator: validatePassword,
                        hint: retypePassword,
                        label: password,
                        sufficIcon: IconButton(
                            onPressed: () {
                              controller.isVisiblee.value =
                                  !controller.isVisiblee.value;
                            },
                            icon: controller.isVisiblee.value
                                ? Icon(
                                    Icons.visibility_off,
                                    color: kPrimaryColor,
                                  )
                                : Icon(Icons.visibility)))),
                    SizedBox(height: 01.h),
                    Obx(() {
                      return CheckboxListTile(
                        activeColor: kPrimaryColor,
                        value: controller.isActive.value,
                        onChanged: (value) {
                          controller.isActive.value =
                              !controller.isActive.value;
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text.rich(
                          TextSpan(
                              text: iAgree,
                              style: Theme.of(context).textTheme.labelSmall,
                              children: [
                                TextSpan(
                                    text: termCondition,
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(color: kPrimaryColor))
                              ]),
                        ),
                      );
                    }),
                    Obx(() {
                      return CustomButton(
                          onTap: () {
                            if (controller.isActive.value) {
                              if (controller.formKey.currentState!.validate()) {
                                controller.createUserWithEmailAndPassword();
                              }
                            } else {
                              EasyLoading.showToast(
                                  'Please agree term & condition');
                            }
                          },
                          text: signUP,
                          color: controller.isActive.value
                              ? kPrimaryColor
                              : kPrimaryColor.shade100);
                    }),
                    SizedBox(height: 02.h),
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(text: alreadyAccount),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.offAllNamed(LoginScreen.routeName);
                                },
                              text: login,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kBlue,
                                  fontSize: 20.sp))
                        ],
                      ),
                    )
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

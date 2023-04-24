import 'package:flutter_application_1/screens/random%20widget/custom_button.dart';
import 'package:flutter_application_1/screens/random%20widget/custom_text_field.dart';
import 'package:flutter_application_1/screens/random%20widget/forget_text.dart';
import 'package:flutter_application_1/screens/random%20widget/random_medium_text.dart';
import 'package:flutter_application_1/screens/splash_screen/components/primary_icons.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../consts/consts.dart';

class Body extends GetView<ForgotScreenController> {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: const [
              PrimaryIcons(),
              SizedBox(
                height: 05,
              ),
              CustomLargeText(text: forgetPassword, color: kPrimaryTextColor),
            ],
          ),
        ),
        Positioned(
          top: 12.h,
          left: 10,
          right: 10,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomTextField(
                      controller: controller.email,
                      validator: validateEmail,
                      onChanged: (v){
                        controller.formKey.currentState!.validate();
                      },
                      onFieldSubmitted: (v){
                        if(controller.formKey.currentState!.validate()){
                          controller.sendPasswordResetEmail();
                        }else{
                          EasyLoading.showToast(blackFieldNotAllow);
                        }
                      },
                      hint: enterEmailOrPhone,
                      label: emailOrPhone,
                      sufficIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.contact_page),
                      ),
                    ),
                    CustomMediumText(
                        text: changePassword,
                        alignMent: Alignment.centerRight,
                        onTap: () {

                        }),
                    CustomButton(
                      onTap: () {
                        if(controller.formKey.currentState!.validate()){
                          controller.sendPasswordResetEmail();
                        }else{
                          EasyLoading.showToast(blackFieldNotAllow);
                        }
                      },
                      text: sendCode,
                      color: kPrimaryColor,
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

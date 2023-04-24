import 'package:flutter_application_1/screens/random%20widget/custom_button.dart';
import 'package:flutter_application_1/screens/random%20widget/custom_text_field.dart';
import 'package:flutter_application_1/screens/random%20widget/forget_text.dart';
import 'package:flutter_application_1/screens/random%20widget/random_medium_text.dart';
import 'package:flutter_application_1/screens/splash_screen/components/primary_icons.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../consts/consts.dart';

class Body extends StatelessWidget {
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomTextField(
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
                      onTap: () {},
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

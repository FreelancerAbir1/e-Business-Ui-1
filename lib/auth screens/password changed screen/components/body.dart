import 'package:flutter_application_1/screens/random%20widget/custom_button.dart';
import 'package:flutter_application_1/screens/random%20widget/custom_small_text.dart';
import 'package:flutter_application_1/screens/random%20widget/forget_text.dart';
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
              CustomLargeText(text: passwordChanged, color: kPrimaryTextColor),
            ],
          ),
        ),
        Positioned(
          top: 12.h,
          left: 10,
          right: 10,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5,
                    width: double.infinity,
                  ),
                  const CustomLargeText(text: 'Congratulation', color: kPrimaryColor),
                  const SizedBox(
                    height: 5,
                    width: double.infinity,
                  ),
                  const CustomSmallText(
                      text: 'You have changed your password successfully!',
                      alignMent: Alignment.centerRight,
                      textAlign: TextAlign.center),
                  Expanded(
                    child: Image.asset(changedPasswordImg),
                  ),
                  CustomButton(
                    onTap: () {},
                    text: continu,
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

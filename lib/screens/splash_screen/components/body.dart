import 'package:flutter_application_1/screens/splash_screen/components/business_text.dart';
import 'package:flutter_application_1/screens/splash_screen/components/primary_icons.dart';
import 'package:flutter_application_1/screens/splash_screen/components/version_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../consts/consts.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [       const Spacer(),
        const PrimaryIcons(),
        const SizedBox(
          height: 05,
        ),
        const BusinessText(text: appname),
        const VersionText(
          appversion: appversion,
        ),
       const Spacer(),
        const Align(
          alignment: Alignment.bottomCenter,
          child: CircularProgressIndicator(),
        ),SizedBox(height: 04.h,)
      ],
    );
  }
}
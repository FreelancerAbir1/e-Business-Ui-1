 
import 'package:responsive_builder/responsive_builder.dart';

import '../../consts/consts.dart';

// Use the widget

class ResponsiveViewer extends StatelessWidget {
  const ResponsiveViewer({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
// Check the sizing information here and return your UI
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const Center(
              child: Text('desktop'),
            );
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const Center(
              child: Text('tablet'),
            );
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
            return const Center(
              child: Text('watch'),
            );
          }

          //! here android navigate---------------------------------------
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            return const SplashScreen();
          }

          return const Center(
            child: Text('any'),
          );
        },
      ),
    );
  }
}

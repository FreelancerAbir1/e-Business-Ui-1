
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/consts/route_name.dart';
 import 'package:flutter_application_1/initial%20bindings/initial_bindings.dart';
import 'package:flutter_application_1/screens/responsive_layout/responsive.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'consts/consts.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MyApp(),
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => MyApp(), // Wrap your app
    // ),
  );
  //easy loading method initialize
  configLoading();
}
//easy loading method animation
void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        initialBinding: InitialBindings(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // useInheritedMediaQuery: true,
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,'
        theme: buildThemeData(),
        initialRoute:SplashScreen.routeName,
         getPages: getPages,
        builder: EasyLoading.init(),
      );
    });
  }
}

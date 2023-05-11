
import 'package:get/get.dart';
import '../../consts/consts.dart';
 import 'components/body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
} 
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
    Get.toNamed(AuthStateChangeScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}


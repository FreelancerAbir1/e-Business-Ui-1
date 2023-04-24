import 'dart:async';  
import 'package:flutter_application_1/auth%20screens/auth_state_change.dart';

import '../../consts/consts.dart';
 import 'components/body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
} 
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushNamed(AuthStateChangeScreen.routeName);
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


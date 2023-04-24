import 'package:flutter_application_1/auth%20screens/login%20screen/login_screen.dart';

import '../consts/consts.dart';

class AuthStateChangeScreen extends StatelessWidget {
  const AuthStateChangeScreen({super.key});

  static const routeName = '/authstatechange';

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: authInstance,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return const BottomNavBar();
          }
          if (!snapshot.hasData) {
            return LoginScreen();
          }
          return const BottomNavBar();
        });
  }
}

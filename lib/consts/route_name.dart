import 'package:flutter_application_1/auth%20screens/auth_state_change.dart';
import 'package:flutter_application_1/auth%20screens/create%20user%20screen/create_user.dart';
import 'package:flutter_application_1/auth%20screens/forgot%20screen/forgot_screen.dart';
import 'package:flutter_application_1/auth%20screens/login%20screen/login_screen.dart';
import 'package:flutter_application_1/auth%20screens/update%20password%20screen/update_password.dart';
import 'package:flutter_application_1/consts/consts.dart';
import 'package:flutter_application_1/consts/strings.dart';
import 'package:flutter_application_1/initial%20bindings/initial_bindings.dart';
import 'package:flutter_application_1/screens/availabe%20screen/available_screen.dart';
import 'package:flutter_application_1/screens/bottom%20nav/bottom_nav.dart';
import 'package:flutter_application_1/screens/home%20screen/home_screen.dart';
import 'package:flutter_application_1/screens/responsive_layout/responsive.dart';
import 'package:get/get.dart';

final List<GetPage<dynamic>> getPages = [
  GetPage(
      name: AuthStateChangeScreen.routeName,
      page: () => AuthStateChangeScreen(),
      binding: InitialBindings()),
  GetPage(
      name: SplashScreen.routeName,
      page: () => SplashScreen(),
      binding: InitialBindings()),
  GetPage(
      name: LoginScreen.routeName,
      page: () => const LoginScreen(),
      binding: InitialBindings()),
  GetPage(
      name: CreateUserScreen.routeName,
      page: () => const CreateUserScreen(),
      binding: InitialBindings()),
  GetPage(
      name: BottomNavBar.routeName,
      page: () => const BottomNavBar(),
      binding: InitialBindings()),
  GetPage(
      name: ForgotScreen.routeName,
      page: () => const ForgotScreen(),
      binding: InitialBindings()),
  GetPage(
      name: HomeScreen.routeName,
      page: () => const HomeScreen(),
      binding: InitialBindings()),
];

import 'package:aquameter/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:aquameter/view/screen/auth/login.dart';
import 'package:aquameter/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:aquameter/view/screen/auth/signup.dart';
import 'package:aquameter/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:aquameter/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:aquameter/view/screen/auth/success_signup.dart';
import 'package:aquameter/view/screen/auth/verifycodesignup.dart';
import 'package:aquameter/view/screen/farm/farm.dart';
import 'package:aquameter/view/screen/home.dart';
import 'package:aquameter/view/screen/lange.dart';
import 'package:aquameter/view/screen/onboarding.dart';
import 'package:aquameter/view/screen/pond/myListview.dart';
import 'package:aquameter/view/screen/pond/pondcreate.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

import 'core/constant/routes.dart';
import 'core/middleware/mymiddleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),
  // GetPage(name: "/", page: () => TestView()),

  GetPage(name: Approutes.onBoarding, page: () => const OnBoarding()),
  GetPage(name: Approutes.login, page: () => Login()),
  GetPage(name: Approutes.homepage, page: () => const Home()),
  GetPage(name: Approutes.signUp, page: () => const SignUp()),
  GetPage(name: Approutes.forgetPassword, page: () => const Forgetpassword()),
  GetPage(name: Approutes.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: Approutes.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: Approutes.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: Approutes.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: Approutes.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(name: Approutes.farm, page: () => const Farm()),
  GetPage(name: Approutes.pond, page: () => const Pond()),
  //GetPage(name: Approutes.ponda, page: () => const list()),

  GetPage(name: Approutes.zabii, page: () => const PondCreata()),
];

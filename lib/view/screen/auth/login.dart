import 'package:aquameter/controller/auth/login_controller.dart';
import 'package:aquameter/core/constant/color.dart';

import 'package:aquameter/view/widget/auth/custombottom.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


import '../../../core/functions/validinput.dart';
import '../../widget/auth/customcard.dart';
import '../../widget/auth/divide.dart';
import '../../widget/auth/textfromshadow.dart';
import '../../widget/auth/textsignup.dart';
import '../../widget/auth/texttitle.dart';


class Login extends StatelessWidget {
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        body: Form(
      key: controller.formstate,
      child: ListView(children: [
        const customcard(),
        const SizedBox(height: 9),
        const Texttitle(text: "Phone number or Email"),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Textfromshadow(
            hhintText: ' Email',
            isNumber: false,
            valid: (val) {
              return ValidInput(val!, 8, 40, "email");
            },
            mycontroller: controller.email,
          ),
        ),
        const Texttitle(text: "Password"),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Textfromshadow(
            hhintText: 'Password',
            valid: (val) {
              return ValidInput(val!, 8, 40, "Password");
            },
            isNumber: false,
            mycontroller: controller.password,
          ),
        ),
        textsignup1(
          texttwo: ' Forgot password ?',
          onTap: () {
            controller.goToForgetPassword();
          },
        ),
        CustomBottom(
          text: "Login",
          onPressed: () {
            controller.login();
          },
        ),
        textsignup(
          textone: 'Dont have an account ? ',
          texttwo: ' Sign up',
          onTap: () {
            controller.goToSignUp();
          },
        ),
        const Divide(),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            margin: EdgeInsets.only(right: 2, left: 2),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(vertical: 11),
              color: Colors.white,
              textColor: AppColor.bleu,
              onPressed: () {
                controller.signInWithGoogle();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/loginimg/google.svg'),
                  SizedBox(width: 8), // Optional spacing between icon and text.
                  Text('Sign In with Google'),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            margin: EdgeInsets.only(right: 2, left: 2),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(vertical: 11),
              color: Colors.white,
              textColor: AppColor.bleu,
              onPressed: () {
                controller.signInWithFacebook();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/loginimg/facebook.svg'),
                  const SizedBox(
                      width: 8), // Optional spacing between icon and text.
                  const Text('Sign In with Facebook'),
                ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}

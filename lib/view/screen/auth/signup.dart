import 'package:aquameter/controller/auth/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aquameter/core/functions/validinput.dart';
import '../../widget/auth/custombottom.dart';
import '../../widget/auth/customtexttitle1.dart';

import '../../widget/auth/textfromshadow.dart';
import '../../widget/auth/texttitle.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      body: Form(
        key: controller.formstate,
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            const CustomTextTitle(text: "Welcome Back"),
            const SizedBox(
              height: 15,
            ),
            const Texttitle(text: "Username"),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Textfromshadow(
                hhintText: 'Username', isNumber: false,
                       valid: (val) {
                  return ValidInput(val!, 4, 100, "username");
                }, mycontroller: controller.username,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Texttitle(text: "Phone number "),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Textfromshadow(
                hhintText: 'Phone number ',
                isNumber: true,
                valid: (val) {
                  return ValidInput(val!, 5, 100, "phone");
                }, mycontroller: controller.phone,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Texttitle(text: "Email"),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Textfromshadow(
                hhintText: 'Email', isNumber: false,
                valid: (val) {
                  return ValidInput(val!, 5, 100, "email");
                }, mycontroller: controller.email,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Texttitle(text: "Password"),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Textfromshadow(
                hhintText: 'Password', isNumber: false, valid: (val ) { 
                           return ValidInput(val!, 8, 40, "Password");
                 }, mycontroller: controller.password,
              ),
            ),
            CustomBottom(
                text: "Sign UP",
                onPressed: () {
                  controller.signUp();
                }),
          ],
        ),
      ),
    );
  }
}

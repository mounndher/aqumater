import 'package:aquameter/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombottom.dart';
import '../../../widget/auth/customtexttitle1.dart';
import '../../../widget/auth/textfromshadow.dart';
import '../../../widget/auth/texttitle.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
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
            const SizedBox(
              height: 15,
            ),
            const Texttitle(text: "Email"),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Textfromshadow(
                hhintText: 'Email', isNumber: false, 
                 mycontroller: controller.email,
                valid: (val) {  
                    return ValidInput(val!, 8, 40, "email");
                },
              ),
            ),
            CustomBottom(
                text: "check email ",
                onPressed: () {
                  controller.checkemail();
                }),
          ],
        ),
      ),
    );
  }
}

import 'package:aquameter/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/forgetpassword/verifycode_controller.dart';
import '../../../widget/auth/customtexttitle1.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.bleu,
          title: Text('Check code'),
        ),
        body: ListView(children: [
          const SizedBox(height: 35),
          const CustomTextTitle(text: "Check code"),
          const SizedBox(height: 35),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToResetPassword(verificationCode);
            }, // end onSubmit
          ),
        ]));
  }
}

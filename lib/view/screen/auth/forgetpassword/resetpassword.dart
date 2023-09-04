import 'package:aquameter/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/forgetpassword/resetpassword_controller.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombottom.dart';
import '../../../widget/auth/textfromshadow.dart';
import '../../../widget/auth/texttitle.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: (Text('New Password ')),
        backgroundColor: AppColor.bleu,
      ),
      body: Form(
        key: controller.formstate,
        child: ListView(children: [
          const SizedBox(height: 20),
          const Texttitle(text: "New Password "),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: Textfromshadow(
              hhintText: 'Enter Your Password ', isNumber: false,
               valid: (val ) {
                  return ValidInput(val!, 8, 40, "Password");
                 }, mycontroller: controller.password,
            ),
          ),
          const SizedBox(height: 15),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: Textfromshadow(
              hhintText: 'Re Enter Your Password ', isNumber: false, 
              valid: (val ) {  
                  return ValidInput(val!, 8, 40, "Password");
              }, mycontroller: controller.repassword,
            ),
          ),
          CustomBottom(
              text: "save",
              onPressed: () {
                controller.goToSuccessResetPassword();
              }),
        ]),
      ),
    );
  }
}

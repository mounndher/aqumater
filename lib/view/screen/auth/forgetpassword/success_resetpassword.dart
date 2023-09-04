import 'package:aquameter/core/constant/color.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../controller/forgetpassword/successresetpassword_controller.dart';
import '../../../widget/auth/custombottom.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.bleu,
        elevation: 0.0,
        title: Text(
          'go',
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.bleu,
          )),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomBottom(
              text: "Login",
              onPressed: () {
                controller.goToPageLogin();
              },
            ),
          ),
          const SizedBox(height: 30)
        ]),
      ),
    );
  }
}

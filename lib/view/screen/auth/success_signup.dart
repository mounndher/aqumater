import 'package:aquameter/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/successsignup_controller.dart';
import '../../widget/auth/custombottom.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.bleu,
        elevation: 0.0,
        title: Text(
          'SuccessSignUp',
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
          Text("37",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 30)),
          Text("38"),
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

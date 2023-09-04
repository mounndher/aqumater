import 'package:aquameter/controller/auth/checkemail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombottom.dart';
import '../../widget/auth/customtexttitle1.dart';
import '../../widget/auth/textfromshadow.dart';
import '../../widget/auth/texttitle.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller=Get.put(CheckEmailControllerImp());
    return Scaffold(
    
      body:  ListView(
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
                hhintText: 'Email', isNumber: false, valid: (val ) { 
                    return ValidInput(val!, 8, 40, "email");
                 }, mycontroller: controller.email,
              ),
            ),
            CustomBottom(
                text: "check email ",
                onPressed: () {
                  controller.goToVerfiyCode();
                }),
          ],
        ),
      
    );
  }
}

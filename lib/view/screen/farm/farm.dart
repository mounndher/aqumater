import 'package:aquameter/controller/farm_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombottom.dart';
import '../../widget/auth/textfromshadow.dart';
import '../../widget/auth/texttitle.dart';

class Farm extends StatelessWidget {
  const Farm({super.key});

  @override
  Widget build(BuildContext context) {
    FarmControllerInp controller = Get.put(FarmControllerInp());
    return Scaffold(
      body: Form(
        key: controller.formstate,
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            
            const SizedBox(
              height: 15,
            ),
            const Texttitle(text: "Username"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Textfromshadow(
                hhintText: 'Username',
                isNumber: false,
                valid: (val) {
                  return ValidInput(val!, 4, 100, "username");
                },
                mycontroller: controller.farmname,
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
                  
                },
                mycontroller: controller.farmtype,
              ),
            ),
            
            CustomBottom(
                text: "Sign UP",
                onPressed: () {
                  controller.gopond();
                }),
          ],
        ),
      ),
    );
  }
}

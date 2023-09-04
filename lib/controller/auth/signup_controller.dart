
import 'package:aquameter/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroler.dart';
import '../../data/datasource/remote/auth/signup.dart';



abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
 GlobalKey<FormState> formstate = GlobalKey<FormState>();
 late StatusRequest statusRequest;

  SignUpData signupData = SignUpData(Get.find());

  List data = [];
  @override
   signUp() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await signupData.postdata(
          username.text, password.text, email.text, phone.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(Approutes.verfiyCodeSignUp,arguments: {
            "email" : email.text
          }  );
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ; 
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("Not Valid");
    }
  }
  @override
  goToSignIn() {
    Get.offNamed(Approutes.login);
  }

  @override
  void onInit() {
    username = TextEditingController() ; 
    phone = TextEditingController() ; 
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
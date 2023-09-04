
import 'package:aquameter/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroler.dart';
import '../../data/datasource/remote/forgetpassword/checkemail.dart';



abstract class ForgetPasswordController extends GetxController {
  checkemail();

}

class ForgetPasswordControllerImp extends ForgetPasswordController { 
  late TextEditingController email; 
 GlobalKey<FormState> formstate = GlobalKey<FormState>();
   
  CheckEmailData checkEmailData  = CheckEmailData(Get.find()) ; 
  StatusRequest? statusRequest ; 



  @override
  checkemail() async {
       if (formstate.currentState!.validate()){
       statusRequest = StatusRequest.loading; 
      update() ; 
      var response = await checkEmailData.postdata(email.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(Approutes.verfiyCode , arguments: {
            "email" : email.text
          });
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Email Not Found"); 
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }


 

  @override
  void onInit() { 
    email = TextEditingController(); 
    super.onInit();
  }

  @override
  void dispose() { 
    email.dispose(); 
    super.dispose();
  }
}
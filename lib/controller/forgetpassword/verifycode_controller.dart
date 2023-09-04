import 'package:aquameter/core/constant/routes.dart';


import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingdatacontroler.dart';
import '../../data/datasource/remote/forgetpassword/verifycode.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifycode);
}

class VerifyCodeControllerImp extends VerifyCodeController {  
 String? email;

  VerfycodeForgetpasswordData verifyCodeForgetPasswordData =
      VerfycodeForgetpasswordData(Get.find());

  StatusRequest? statusRequest;
  late String verifycode  ; 

  @override
  checkCode() {}

  @override
  goToResetPassword(String verifycode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeForgetPasswordData.postdata(email!, verifycode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(Approutes.resetPassword , arguments: {
          "email" : email
        });
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {  
     email = Get.arguments['email'];
    super.onInit();
  }

 
}
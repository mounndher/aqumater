
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingdatacontroler.dart';
import '../../data/datasource/remote/auth/verifycodesignup.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp( String verfiyCodeSignUp);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {  

  late String verifycode  ; 
 VerifyCodeSignUpData verfiyCodeSignUpData = VerifyCodeSignUpData(Get.find());
 

  String? email;

  StatusRequest? statusRequest;
  @override
  checkCode() {}

  @override
  goToSuccessSignUp(verfiyCodeSignUp) async {
     statusRequest = StatusRequest.loading;
    update();
    var response = await verfiyCodeSignUpData.postdata(email!, verfiyCodeSignUp); 
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") { 
        Get.offNamed(Approutes.successSignUp);
      } else {
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Verify Code Not Correct");
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
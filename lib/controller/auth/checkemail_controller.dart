
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class CheckEmailController extends GetxController {
  checkemail();
  goToVerfiyCode();
}

class CheckEmailControllerImp extends CheckEmailController { 
  late TextEditingController email; 
GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  checkemail() {}

  @override
  goToVerfiyCode() {
    Get.offNamed(Approutes.verfiyCodeSignUp);
    
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
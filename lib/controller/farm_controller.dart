import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdatacontroler.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/farm.dart';

abstract class FarmController extends GetxController {
  gopond();
}

class FarmControllerInp extends FarmController {
  late TextEditingController farmname;
  late TextEditingController farmtype;
  FarmUpData signupData = FarmUpData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late StatusRequest statusRequest;

  MyServices myServices = Get.find();
  @override
  gopond() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      var userId = myServices.sharedPreferences.getString("id");
      print(userId);
      if (userId != null) {
        var response = await signupData.postdata(
          farmname.text,
          farmtype.text,
          userId,
        );

        print("=============================== Controller $response ");
        statusRequest = handlingData(response);

        if (StatusRequest.success == statusRequest) {
          if (response['status'] == "success") {
            Get.offNamed(Approutes.zabii, arguments: { "farmname":farmname.text});
          } else {
            Get.defaultDialog(title: "ُWarning", middleText: " Already Exists");
            statusRequest = StatusRequest.failure;
          }
        }
        update();
      } else {
        print("zabi");
      }
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    farmname = TextEditingController();
    farmtype = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    farmname.dispose();
    farmtype.dispose();
    super.dispose();
  }
}

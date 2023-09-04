import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdatacontroler.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/ponddata.dart';

abstract class pondController extends GetxController {
  gotolist();
}

class pondControllerImp extends pondController {
  String? farmtype;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  String? pondnumber;
  String? farmid;
  StatusRequest? statusRequest;
  POndData signupData = POndData(Get.find());
  List fram = [];
  List<TextEditingController> pondnameControllers = [];
  List<TextEditingController> pondtypeControllers = [];

  @override
  gotolist() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      // Provide a default value if null
        print(farmid);
      // Assuming you have multiple pondname and pondtype controllers
      for (int i = 0; i < pondnameControllers.length; i++) {
        
        var response = await signupData.postdata(
            pondnameControllers[i].text, pondtypeControllers[i].text,farmid!);

        print("=============================== Controller $response ");
        statusRequest = handlingData(response);

        if (StatusRequest.success == statusRequest) {
          if (response['status'] == "success") {
            Get.offNamed(Approutes.homepage);
          } else {
            Get.defaultDialog(title: "ُWarning", middleText: " Already Exists");
            statusRequest = StatusRequest.failure;
          }
        }
      }
      update();
    } else {
      print("Not Valid");
    }
  }

  void initControllers() {
    //pondnumber = TextEditingController();
  }

  @override
  void onInit() {
    pondnumber = Get.arguments['pondnumber'];
    farmid = Get.arguments['farmid'];
    // Initialize the pondnameControllers and pondtypeControllers lists
    for (int i = 0; i < (int.tryParse(pondnumber ?? "0") ?? 0); i++) {
      pondnameControllers.add(TextEditingController());
      pondtypeControllers.add(TextEditingController());

      super.onInit();
    }

    @override
    void dispose() {
      //pondname.dispose();
      //pondtype.dispose();

      // Dispose of the controllers in the lists
      for (var controller in pondnameControllers) {
        controller.dispose();
      }
      for (var controller in pondtypeControllers) {
        controller.dispose();
      }

      super.dispose();
    }
  }
}

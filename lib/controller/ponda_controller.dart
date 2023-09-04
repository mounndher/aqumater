import 'package:dartz/dartz.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../core/constant/routes.dart';
import '../core/functions/handlingdatacontroler.dart';
import '../core/services/services.dart';
import '../data/datasource/remote/ponda.dart';
import '../data/datasource/remote/view_farm.dart';
import '../data/model/itemsmodel.dart';

abstract class pondaController extends GetxController {
  gotolist();
  // ignore: non_constant_identifier_names
  Getfarm();
}

class pondaControllerImp extends pondaController {
  String? farmtype;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController pondnumber;
  late TextEditingController a;
  late TextEditingController farmid;
  late TextEditingController farmnme;
  StatusRequest? statusRequest;
  String? farmname;
  PondaData signupData = PondaData(Get.find());
  List fram = [];
  List<SelectedListItem> dropdownlist = [];
  List<TextEditingController> pondnameControllers = [];
  List<TextEditingController> pondtypeControllers = [];
  MyServices myServices = Get.find();
  @override
  void onInit() {
    Getfarm();
    pondnumber = TextEditingController();
    farmnme = TextEditingController();
    farmid = TextEditingController();
    farmname = Get.arguments['farmname'];
    a = TextEditingController();
    super.onInit();
  }
  Getfarm() async {
    FarmviewData get = FarmviewData(Get.find());
    statusRequest = StatusRequest.loading;
    var response = await get.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    print(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List<FarmModel> data = [];
        List datalist = response['data'];
        data.addAll(datalist.map((e) => FarmModel.fromJson(e)));
        for (int i = 0; i < data.length; i++) {
          dropdownlist.add(SelectedListItem(
              name: data[i].farmname!, value: data[i].farmId));
        }
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
  @override
  gotolist() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.getData();
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      print(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(Approutes.pond, arguments: {
           "pondnumber": pondnumber.text,
            "farmid": farmid.text
          });
          print("===================================================="+farmid.text+"=============="+farmnme.text);
        } else {
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("Not Valid");
    }
  }

  

  @override
  void dispose() {
    pondnumber.dispose();
    a.dispose();
    farmid.dispose();
    farmnme.dispose();
    super.dispose();
  }

  

  /*showDropdown(context) {
    DropDownState(
      DropDown(
        bottomSheetTitle: const Text(
          "kCities",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        submitButtonChild: const Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        data: [
          SelectedListItem(name: "kParis"),
          SelectedListItem(name: "kMadrid"),
          SelectedListItem(name: "kDubai"),
        ],
        selectedItems: (List<dynamic> selectedList) {
          SelectedListItem selectedListItem = selectedList[0];
          a.text = selectedListItem.name;
          //showSnackBar(list.toString());
        },
      ),
    ).showModal(context);
  }*/
}

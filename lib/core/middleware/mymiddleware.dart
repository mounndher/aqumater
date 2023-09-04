import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../constant/routes.dart';
import '../services/services.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myservices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myservices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: Approutes.homepage);
    }
    if (myservices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: Approutes.login);
    }
    return null;
  }
}

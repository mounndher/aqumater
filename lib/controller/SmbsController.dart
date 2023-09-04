
import 'package:get/get.dart';

import '../../core/constant/routes.dart';

abstract class SmbsController extends GetxController {
  gotoFarm();
}

class SmbsControllerImp extends SmbsController {
 
  @override
  gotoFarm(){
   Get.offAllNamed(Approutes.farm);

  }
}

import 'package:aquameter/core/class/crud.dart';
import 'package:aquameter/linkapi.dart';
class FarmUpData {
  Crud crud;
  FarmUpData(this.crud);
  postdata(String farmname,String farmtype,String usersid) async {
    var response = await crud.postData(AppLink.farm, {
      "farmname":farmname,
      "farmtype":farmtype,
      "usersid":usersid 
    });
    return response.fold((l) => l, (r) => r);
  }
}

import 'package:aquameter/core/class/crud.dart';
import 'package:aquameter/linkapi.dart';
class POndData {
  Crud crud;
  POndData(this.crud);
  postdata(String pond_name 	,String pond_type) async {
    var response = await crud.postData(AppLink.pond, {
      "pond_name":pond_name,
      "pond_type":pond_type,
      //"farmid":farmid 
     
    });
    return response.fold((l) => l, (r) => r);
  }
}

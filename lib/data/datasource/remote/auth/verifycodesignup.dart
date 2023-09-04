import 'package:aquameter/core/class/crud.dart';
import 'package:aquameter/linkapi.dart';

class VerifyCodeSignUpData {
   Crud crud;
  VerifyCodeSignUpData(this.crud);
  postdata(String email ,String verifycode ) async {
    var response = await crud.postData(AppLink.verifycodesignup, {
      "email" : email , 
      "verifycode" : verifycode   
    });
    return response.fold((l) => l, (r) => r);
  }
}

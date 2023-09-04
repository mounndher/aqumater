

import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class PondaData {
  Crud crud;
  PondaData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.ponda, {});
    return response.fold((l) => l, (r) => r);
  }
}
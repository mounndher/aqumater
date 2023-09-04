import '../../../core/class/crud.dart';
import '../../../linkapi.dart';

class FarmviewData {
  Crud crud;
  FarmviewData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.farmview, {});
    return response.fold((l) => l, (r) => r);
  }
}
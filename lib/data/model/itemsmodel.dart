class FarmModel {
  String? farmId;
  String? farmname;
  String? farmtype;
  String? usersid;

  FarmModel({this.farmId, this.farmname, this.farmtype, this.usersid});

  FarmModel.fromJson(Map<String, dynamic> json) {
    farmId = json['farm_id'];
    farmname = json['farmname'];
    farmtype = json['farmtype'];
    usersid = json['usersid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['farm_id'] = this.farmId;
    data['farmname'] = this.farmname;
    data['farmtype'] = this.farmtype;
    data['usersid'] = this.usersid;
    return data;
  }
}
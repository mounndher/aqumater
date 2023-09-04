import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/ponda_controller.dart';
import '../../../core/functions/validinput.dart';
import '../../../core/shard/customdropdown.dart';

class PondCreata extends StatelessWidget {
  const PondCreata({super.key});

  @override
  Widget build(BuildContext context) {
    pondaControllerImp controller = Get.put(pondaControllerImp());
      
    return Scaffold(
      appBar: AppBar(
        title: Text("${controller.farmname}"),
        
      ),
      body: Form(
        key: controller.formstate,
        child: Column(
          children: [
            SizedBox(height: 20),
             CustomdropdownSearch(
             dropDownSelectedid: controller.farmid, 
             dropDownSelectedname: controller.farmnme,
              listdata: controller.dropdownlist,
               title: '${controller.farmname}'
              ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Pond Type'),
                validator: (val) {
                  return ValidInput(val!, 1, 100, "Pond Type");
                },
                controller: controller.pondnumber,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.gotolist();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

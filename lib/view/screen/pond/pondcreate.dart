import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/pond_controller.dart';
import '../../../core/functions/validinput.dart';



class Pond extends StatelessWidget {
  //final ItemsModel itemsModel;
  const Pond({Key? key});

  @override
  Widget build(BuildContext context) {
    pondControllerImp controller = Get.put(pondControllerImp());

    return Scaffold(
      appBar: AppBar(
        title: Text('Pond'),
      ),
      body: Form(
        key: controller.formstate,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: int.tryParse(controller.pondnumber ?? "0") ?? 0,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(hintText: 'Pond Name'),
                            validator: (val) {
                              return ValidInput(val!, 4, 100, "Pond Name");
                            },
                            controller: controller.pondnameControllers[index],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(hintText: 'Pond Type'),
                            validator: (val) {
                              return ValidInput(val!, 4, 100, "Pond Type");
                            },
                            controller: controller.pondtypeControllers[index],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
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

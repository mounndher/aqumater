import 'package:flutter/material.dart';


import '../../../core/constant/color.dart';
import 'customtexttitle1.dart';
import 'logo1.dart';

class customcard extends StatelessWidget {
  const customcard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          margin: const EdgeInsets.symmetric( vertical: 1),
          child: Stack(
            children: [
              Container(
                height: 280,
                    color: AppColor.bleufatg,
                  child: ListView(children:  const [
                     SizedBox(height: 25),
                      Logo(),
                      SizedBox(height: 25),
                      CustomTextTitle(text: "Welcome Back"),
                     
              
                  ]
                    
                      
                     
                    ),
                ),
                
               
            
              
            ],
          ));
  }
}
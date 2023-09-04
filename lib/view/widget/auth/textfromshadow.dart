import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class Textfromshadow extends StatelessWidget {
  final String hhintText;
  final IconData? icon;
  
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
const Textfromshadow({super.key, required this.hhintText,
 this.icon,required this.mycontroller, required this.valid, required this.isNumber});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          padding:const EdgeInsets.only(left: 5) ,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(64, 0, 0, 0), // shadow color
              ),
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 10,
                spreadRadius: 0,
                color: AppColor.bleufatg, // background color
              ),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextFormField(
             
            controller: mycontroller,
            keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
            decoration: InputDecoration(
              hintText: hhintText,
              hintStyle: const TextStyle(fontSize: 14),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: InputBorder.none,
            ),
            
            validator: valid,
          )),
    );
  }
}

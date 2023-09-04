import 'package:aquameter/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textsignup extends StatelessWidget {
    final String ?textone;
  final String ?texttwo;
  final void Function() onTap;
  const textsignup({super.key,required  this.textone,required  this.texttwo, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //const Text("Don't have an account ?"),
        Text(textone!,style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.2125,
                  
                   ),),
       InkWell(
           
            onTap: onTap,
           
            child: Text(
              texttwo!,
              style:GoogleFonts.inter(
                  color: AppColor.bleu,
                  fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1.2125,
                  
                   ),
            ),
          )
      ],
    );
  }

}



class textsignup1 extends StatelessWidget {
    
  final String ?texttwo;
  final void Function()? onTap;
  const textsignup1({super.key,  this.texttwo, this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:200.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          //const Text("Don't have an account ?"),
         
          InkWell(
            onTap: onTap,
            child: Text(
              texttwo!,
              style:GoogleFonts.inter(
                  color: AppColor.bleu,
                  fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.2125,
                  
                   ),
            ),
          )
        ],
      ),
    );
  }
}
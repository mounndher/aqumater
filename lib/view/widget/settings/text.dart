import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texttitle1 extends StatelessWidget {
  final String text;
  const Texttitle1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                        padding: const EdgeInsets.symmetric(horizontal:0.0,vertical: 0),
                        child: Text(text,style:  GoogleFonts.inter(
      
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.2125,
        color: Color(0xff000000),
      ),

            
          ));
  }
}
class Texttitle2 extends StatelessWidget {
  final String text;
  const Texttitle2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                        padding: const EdgeInsets.symmetric(horizontal:0.0,vertical: 0),
                        child: Text(text,style:  GoogleFonts.inter(
      
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.2125,
        color: Color(0xff000000),
      ),

            
          ));
  }
}
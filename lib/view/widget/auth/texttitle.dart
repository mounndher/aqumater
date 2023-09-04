import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texttitle extends StatelessWidget {
  final String text;
  const Texttitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                        padding: const EdgeInsets.symmetric(horizontal:19.0,vertical: 5),
                        child: Text(text,style:  GoogleFonts.inter(
      
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.2125,
        color: Color(0xff000000),
      ),

            
          ));
  }
}
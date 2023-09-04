import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTitle extends StatelessWidget {
  final String text;
  const CustomTextTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      
      text,textAlign: TextAlign.center,
      
      style: GoogleFonts.inter(
      
        fontSize: 27,
        fontWeight: FontWeight.w600,
        height: 1.2125,
        color: Color(0xff000000),
      ),
    );
  }
}

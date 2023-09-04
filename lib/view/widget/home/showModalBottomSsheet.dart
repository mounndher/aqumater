import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../controller/SmbsController.dart';
class ShowModalBottomSsheet extends StatelessWidget {
  const ShowModalBottomSsheet({super.key});

  @override
  Widget build(BuildContext context) {
    SmbsControllerImp controller= Get.put(SmbsControllerImp());
    return Container(
      height: 550,
      child: ListView(children: [
        Row(
          children: [
            SizedBox(
              width: 160,
              height: 15,
            ),
            InkWell(
              child: Image.asset("assets/images/Rectangle 32.png"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(height: 30,width: 10),
            InkWell(
              child:Image.asset("assets/images/arrow.png"),onTap: () {
                Navigator.pop(context);
              },),
            const SizedBox( width: 110),
            Text(
              'Quick Input',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500, fontSize: 12.75),
            )
          ],
        ),
        Row(
          children: [
            const SizedBox(height: 19,width: 10),
            Text(
              'Farming',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500, fontSize: 12.75),
            )
            
           
            
          ],
          
        ),
        Row(
          children: [
            const SizedBox(height: 90,width: 40),
           InkWell(
              child:SvgPicture.asset("assets/bottombar/2.svg"),onTap: () {
                Navigator.pop(context);
              },),
            
           const SizedBox(width: 60),
            InkWell(
              child:SvgPicture.asset("assets/bottombar/3.svg"),onTap: () {
                Navigator.pop(context);
              },),
              const SizedBox(width: 60),
            InkWell(
              child:SvgPicture.asset("assets/bottombar/4.svg"),onTap: () {
                Navigator.pop(context);
              },)
          ],
        ),
        Row(
          children: [
            const SizedBox(height: 60,width: 40),
           InkWell(
              child:SvgPicture.asset("assets/bottombar/5.svg"),onTap: () {
                Navigator.pop(context);
              },),
            
           const SizedBox(width: 50),
            InkWell(
              child:SvgPicture.asset("assets/bottombar/6.svg"),onTap: () {
               controller.gotoFarm();
              },),
              const SizedBox(width: 70),
            InkWell(
              child:SvgPicture.asset("assets/bottombar/7.svg"),onTap: () {
                Navigator.pop(context);
              },)
          ],
        ),
        Row(
          children: [
            const SizedBox(height: 50,width: 10),
            Text(
              'Daily',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500, fontSize: 12.75),
            )
            
           
            
          ],
          
        ),
        Row(
          children: [
            const SizedBox(width: 50),
           InkWell(
              child:SvgPicture.asset("assets/bottombar/8.svg"),onTap: () {
                Navigator.pop(context);
              },),
            
           const SizedBox(width: 55),
            InkWell(
              child:SvgPicture.asset("assets/bottombar/9.svg"),onTap: () {
                Navigator.pop(context);
              },),
              const SizedBox(width: 65),
            InkWell(
              child:SvgPicture.asset("assets/bottombar/10.svg"),onTap: () {
                Navigator.pop(context);
              },)
          ],
        ),
         Row(
          children: [
            const SizedBox(height: 90,width: 40),
           InkWell(
              child:SvgPicture.asset("assets/bottombar/11.svg"),onTap: () {
                Navigator.pop(context);
              },),
          ]
         ),
          Row(
          children: [
            const SizedBox(height: 8,width: 10),
            Text(
              'Laboratorium Test',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500, fontSize: 12.75),
            )
            
           
            
          ],
          
        ),
        Row(
          children: [
            const SizedBox(height: 75,width: 50),
           InkWell(
              child:SvgPicture.asset("assets/bottombar/12.svg"),onTap: () {
                Navigator.pop(context);
              },),
            
           const SizedBox(width: 60),
            InkWell(
              child:SvgPicture.asset("assets/bottombar/13.svg"),onTap: () {
                Navigator.pop(context);
              },),
              const SizedBox(width: 75),
            InkWell(
              child:SvgPicture.asset("assets/bottombar/14.svg"),onTap: () {
                Navigator.pop(context);
              },)
          ],
        ),
        Row(
          children: [
            const SizedBox(height: 8,width: 10),
            Text(
              'Others',
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500, fontSize: 12.75),
            )
            
           
            
          ],
          
        ),
        Row(
          children: [
            const SizedBox(height: 75,width: 50),
           InkWell(
              child:SvgPicture.asset("assets/bottombar/15.svg"),onTap: () {
                Navigator.pop(context);
              },),
            
           const SizedBox(width: 60),
            InkWell(
              child:SvgPicture.asset("assets/bottombar/16.svg"),onTap: () {
                Navigator.pop(context);
              },),
              const SizedBox(width: 70),
           
          ],
        ),
        
      ]),
    );
  }
}

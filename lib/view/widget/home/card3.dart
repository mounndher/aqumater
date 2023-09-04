import 'package:aquameter/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constant/color.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
      },
      child:    Card(
                    color: AppColor.bleufatg,
                     elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                           Row(
                            children: [ const Padding(
                              padding: EdgeInsets.only(left:4.0,top: 5),
                              child: Image(image: AssetImage('assets/images/Vector1.png')),
                            ),
                            Text(
                                ' SR Estimation',
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  
                                ),
                              
                            ),],
                           ),
                           
                            SizedBox(height: 10,),
                             Text(
                              ' 99.99  \$',
                              style: GoogleFonts.inter(
                                color: AppColor.bleu,
                                fontSize: 30,
                                 fontWeight: FontWeight.w700,
                              ),
                            ),
                              SizedBox(height: 20,),
                              Row(
                            children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:4.0),
                                  child: Text(
                                  'from 1 active ponds',
                                  style: GoogleFonts.inter(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    
                                  ),
                                                              
                                                            ),
                                ),

                            ])
                          
                    ])),
    );
  }
}
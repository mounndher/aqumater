import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constant/color.dart';

class Card4 extends StatelessWidget {
  const Card4({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child:  Card(
                    color: AppColor.bleufatg,
                     elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                           Row(
                            children: [ Padding(
                              padding: const EdgeInsets.only(left: 4.0,top:4),
                              child: Image(image: AssetImage('assets/images/sell.png')),
                            ),
                            Text(
                                ' Sell Price',
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

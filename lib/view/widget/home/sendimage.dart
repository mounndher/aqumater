import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SendImage extends StatelessWidget {
  
  const SendImage({super.key, });

  @override
  Widget build(BuildContext context) {
    return   Padding(
                 padding: const EdgeInsets.only(left:15.0),
                 child: Container(
                        width: 68,
                        height: 71,
                        child: SvgPicture.asset('assets/homeimg/Group 2.svg')
                      ),
               );
  }
}
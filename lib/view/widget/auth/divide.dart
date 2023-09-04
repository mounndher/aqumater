import 'package:flutter/material.dart';

import 'customtexttitle1 copy.dart';

class Divide extends StatelessWidget {
  const Divide({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 30,
                    thickness: 0.5,
                  ),
                ),
                
                  CustomTextTitle1(
                    text: 'or',
                  ),
              
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
          );
  }
}
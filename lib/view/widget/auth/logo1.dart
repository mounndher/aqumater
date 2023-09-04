import 'package:flutter/material.dart';




class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(22.0),
      child: Image.asset('assets/images/old logo.png',height: 100,width: 190,),
    );
  }
}
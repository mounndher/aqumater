
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomBottom extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomBottom({super.key, required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        margin: EdgeInsets.only(right: 2, left: 2),
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 13),
          color: Colors.white,
          textColor: AppColor.bleu,
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}

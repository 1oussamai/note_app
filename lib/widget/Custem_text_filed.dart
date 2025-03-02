import 'package:flutter/material.dart';
import 'package:note_app/widget/constants.dart';

class CustemTextFiled extends StatelessWidget {
  const CustemTextFiled({super.key, required this.hintText, this.maxLine = 1});

  final String hintText;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineBuilder(),
        border: OutlineBuilder(),
        focusedBorder: OutlineBuilder(kPrimeryColor),
      ),
    );
  }

  OutlineInputBorder OutlineBuilder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Color ?? Colors.white,
      ),
    );
  }
}

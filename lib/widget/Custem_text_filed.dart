import 'package:flutter/material.dart';
import 'package:note_app/widget/constants.dart';

class CustemTextFiled extends StatelessWidget {
  const CustemTextFiled(
      {super.key, required this.hintText, this.maxLine = 1, this.onSaved, this.onChanged});

  final String hintText;
  final int maxLine;
  final void Function(String?)? onSaved;
final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged ,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this filed is required ';
        }else {
          return null;
        }
      },
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: outlineBuilder(),
        border: outlineBuilder(),
        focusedBorder: outlineBuilder(kPrimeryColor),
      ),
    );
  }

  OutlineInputBorder outlineBuilder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: Color ?? Colors.white,
      ),
    );
  }
}

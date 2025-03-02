import 'package:flutter/material.dart';
import 'package:note_app/widget/constants.dart';

class CustemBotton extends StatelessWidget {
  const CustemBotton({super.key, required this.text, this.onTap, this.color});
  final String text;
  final void Function()? onTap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 400,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

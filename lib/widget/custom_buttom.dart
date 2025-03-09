import 'package:flutter/material.dart';

class CustemBotton extends StatelessWidget {
  const CustemBotton(
      {super.key,
      required this.text,
      this.onTap,
      this.color,
      this.isLoading = false});
  final String text;
  final void Function()? onTap;
  final Color? color;
  final bool isLoading;
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
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : Text(
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

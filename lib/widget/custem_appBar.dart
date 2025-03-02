import 'package:flutter/material.dart';
import 'package:note_app/widget/Custom_icon.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          const Spacer(),
          CustomIcon(
            icon: icon,
          )
        ],
      ),
    );
  }
}

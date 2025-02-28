import 'package:flutter/material.dart';
import 'package:note_app/screens/Custom_icon.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Note',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Spacer(),
        CustomIcon()
      ],
    );
  }
}



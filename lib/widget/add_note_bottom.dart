import 'package:flutter/material.dart';
import 'package:note_app/widget/Custem_text_filed.dart';
import 'package:note_app/widget/constants.dart';

import 'package:note_app/widget/custom_buttom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(17),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustemTextFiled(
              hintText: 'Title',
            ),
            SizedBox(
              height: 19,
            ),
            CustemTextFiled(
              hintText: "Descrabetion",
              maxLine: 5,
            ),
            SizedBox(
              height: 70,
            ),
            CustemBotton(
              text: 'save',
              color: KPrimeryColor,
            ),
          ],
        ),
      ),
    );
  }
}

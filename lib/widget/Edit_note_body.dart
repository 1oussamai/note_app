import 'package:flutter/material.dart';
import 'package:note_app/widget/Custem_text_filed.dart';
import 'package:note_app/widget/constants.dart';
import 'package:note_app/widget/custem_appBar.dart';
import 'package:note_app/widget/custom_buttom.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        children: [
          const CustemAppBar(
            text: 'EDIT NOTE',
            icon: Icons.done,
          ),
          const SizedBox(
            height: 19,
          ),
          const CustemTextFiled(hintText: 'edit the title'),
          const SizedBox(
            height: 10,
          ),
          const CustemTextFiled(
            hintText: 'edit the descreption',
            maxLine: 5,
          ),
          const Spacer(),
          CustemBotton(
            onTap: () {
              Navigator.pop(context);
            },
            color: Colors.grey[300],
            text: "cancel",
          ),
          const SizedBox(
            height: 18,
          ),
          const CustemBotton(
            color: KPrimeryColor,
            text: "save",
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

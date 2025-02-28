import 'package:flutter/material.dart';
import 'package:note_app/screens/Custem_text_filed.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
          )
        ],
      ),
    );
  }
}

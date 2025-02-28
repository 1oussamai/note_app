import 'package:flutter/material.dart';
import 'package:note_app/screens/Custem_text_filed.dart';
import 'package:note_app/screens/constants.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Padding(
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
            CustemBotton(),
          ],
        ),
      ),
    );
  }
}

class CustemBotton extends StatelessWidget {
  const CustemBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 400,
      decoration: BoxDecoration(
          color: KPrimeryColor, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          'Save',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

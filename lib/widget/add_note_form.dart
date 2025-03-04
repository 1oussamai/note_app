import 'package:flutter/material.dart';
import 'package:note_app/widget/Custem_text_filed.dart';
import 'package:note_app/widget/constants.dart';
import 'package:note_app/widget/custom_buttom.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustemTextFiled(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 19,
          ),
          CustemTextFiled(
            onSaved: (value) {
              subtitle = value;
            },
            hintText: "Descrabetion",
            maxLine: 5,
          ),
          const SizedBox(
            height: 70,
          ),
          CustemBotton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            text: 'save',
            color: kPrimeryColor,
          ),
        ],
      ),
    );
  }
}

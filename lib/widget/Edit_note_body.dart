import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/Custem_text_filed.dart';
import 'package:note_app/widget/constants.dart';
import 'package:note_app/widget/custem_appBar.dart';
import 'package:note_app/widget/custom_buttom.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        children: [
          CustemAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subtitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNote();
              Navigator.pop(context);
            },
            text: 'EDIT NOTE',
            icon: Icons.done,
          ),
          const SizedBox(
            height: 19,
          ),
          CustemTextFiled(
            onChanged: (value) {
              title = value;
            },
            hintText: 'edit the title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustemTextFiled(
            onChanged: (value) {
              subtitle = value;
            },
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
            color: kPrimeryColor,
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

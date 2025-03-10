import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/Edit_note_body.dart';



class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: EditNoteBody(
          note: note,
        ),
      ),
    );
  }
}

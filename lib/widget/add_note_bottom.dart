import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note_form.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(17),
        child: AddNoteForm(),
      ),
    );
  }
}


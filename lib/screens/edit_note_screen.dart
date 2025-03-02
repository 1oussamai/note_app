import 'package:flutter/material.dart';
import 'package:note_app/widget/Edit_note_body.dart';

import 'package:note_app/widget/custem_appBar.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: EditNoteBody(),
      ),
    );
  }
}



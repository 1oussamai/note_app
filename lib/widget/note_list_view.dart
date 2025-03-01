import 'package:flutter/material.dart';
import 'package:note_app/widget/Note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, indext) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child:  NoteItem(),
      );
    });
  }
}

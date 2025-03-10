import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note_bottom_sheet.dart';
import 'package:note_app/widget/constants.dart';
import 'package:note_app/widget/note_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber[200],
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NoteBodyView(),
    );
  }
}

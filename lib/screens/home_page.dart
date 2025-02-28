import 'package:flutter/material.dart';
import 'package:note_app/screens/add_note_bottom.dart';
import 'package:note_app/screens/note_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const NoteBodyView(),
    );
  }
}

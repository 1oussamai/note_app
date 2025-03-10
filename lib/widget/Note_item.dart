import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screens/edit_note_screen.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});
  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return  EditNoteScreen(
              note: notes,
            );
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 23, bottom: 23),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.amber),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 29),
                child: Text(
                  notes.subTitle,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    notes.delete();
                    BlocProvider.of<NoteCubit>(context).fetchAllNote();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 40,
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 30,
                bottom: 1,
              ),
              child: Text(
                notes.date,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

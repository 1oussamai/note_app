import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/Note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NoteCubit>(context).allNotes ?? [];
        return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, indext) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: NoteItem(),
              );
            });
      },
    );
  }
}

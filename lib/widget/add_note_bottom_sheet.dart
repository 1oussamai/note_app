import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/cubits/add_note_cubit/add_note_cubits_cubit.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/widget/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNoteCubitsState>(
      listener: (context, state) {
        if (state is AddNoteCubitsFailure) {}
        if (state is AddNoteCubitsSuccess) {
          BlocProvider.of<NoteCubit>(context).fetchAllNote();
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        AbsorbPointer(
          absorbing: state is AddNoteCubitsLoading ? true : false,
        );
        return Padding(
          padding: EdgeInsets.only(
            left: 18,
            right: 18,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: const SingleChildScrollView(child: AddNoteForm()),
        );
      },
    );
  }
}

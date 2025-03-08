import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/cubits/add_note_cubit/add_note_cubits_cubit.dart';
import 'package:note_app/widget/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17),
      child: BlocConsumer<AddNoteCubit, AddNoteCubitsState>(
        listener: (context, state) {
          if (state is AddNoteCubitsFailure) {
            print('object');
          }
          if (state is AddNoteCubitsSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          AbsorbPointer(
            absorbing: state is AddNoteCubitsLoading ? true : false,
          )
          return const SingleChildScrollView(child: AddNoteForm());
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';

import 'package:note_app/widget/custem_appBar.dart';
import 'package:note_app/widget/note_list_view.dart';

class NoteBodyView extends StatefulWidget {
  const NoteBodyView({super.key});

  @override
  State<NoteBodyView> createState() => _NoteBodyViewState();
}

class _NoteBodyViewState extends State<NoteBodyView> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            CustemAppBar(
              text: 'NOTE',
              icon: Icons.search,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child: NoteListView()),
          ],
        ),
      ),
    );
  }
}

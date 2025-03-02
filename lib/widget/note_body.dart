import 'package:flutter/material.dart';

import 'package:note_app/widget/custem_appBar.dart';
import 'package:note_app/widget/note_list_view.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

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
            const SizedBox(
              height: 10,
            ),
            const Expanded(child: NoteListView()),
          ],
        ),
      ),
    );
  }
}

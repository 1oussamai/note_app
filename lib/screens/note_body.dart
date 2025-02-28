import 'package:flutter/material.dart';

import 'package:note_app/screens/custem_appBar.dart';
import 'package:note_app/screens/note_list_view.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          children: [
            CustemAppBar(),
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



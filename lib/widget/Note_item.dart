import 'package:flutter/material.dart';
import 'package:note_app/screens/edit_note_screen.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteScreen();
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
              title: const Text(
                'Welcome to ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 29),
                child: Text(
                  'learning how to create an applicatin',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 40,
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(
                right: 30,
                bottom: 1,
              ),
              child: Text(
                '20:22',
                style: TextStyle(
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

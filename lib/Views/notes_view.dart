import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/Views/widgets/add_note_bottom_sheet.dart';
import 'package:noteapp/Views/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },

        backgroundColor: kPrimaryColor,
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: const NoteViewBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:noteapp/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
        
      ),
      body: const NoteViewBody(),
    );
  }
}

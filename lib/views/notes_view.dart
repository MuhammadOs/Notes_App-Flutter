import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import '../widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const AddNoteBottomSheet();
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)));
            },
            icon: const Icon(Icons.add, size: 24,)),
      ),
      body: const NotesViewBody(),
    );
  }
}

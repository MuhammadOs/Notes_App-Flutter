import 'package:flutter/material.dart';
import '../widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      ),
      body: const NotesViewBody(),
    );
  }
}

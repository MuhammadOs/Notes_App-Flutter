import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

import '../models/note_model.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Color(note.color),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(
                      color: Colors.black, fontSize: 32, fontFamily: "Poppins"),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    note.subTitle,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: "Poppins"),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      note.delete();
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 35,
                    )),
              ),
              Text(
                note.date,
                style: const TextStyle(
                    color: Colors.black54, fontSize: 16, fontFamily: "Poppins"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

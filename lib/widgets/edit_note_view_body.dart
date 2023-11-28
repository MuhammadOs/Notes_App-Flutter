import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note', icon: Icons.done_outline),
          CustomTextField(hint: "Title"),
          CustomTextField(hint: "Content", maxLines: 5,),
        ],
      ),
    );
  }
}

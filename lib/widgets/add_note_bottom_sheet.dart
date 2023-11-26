import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/cutom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(hint: 'Title'),
        CustomTextField(hint: 'Content', maxLines: 5,),
      ],
    );
  }
}

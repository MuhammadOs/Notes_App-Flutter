import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
      return ModalProgressHUD(
          inAsyncCall: state is AddNoteLoading ? true : false,
          child: const AddNoteForm());
    }, listener: (context, state) {
      if (state is AddNoteFailure) {
        print('Failed ${state.errMessage}');
      }
      else if (state is AddNoteSuccess) {
        Navigator.pop(context);
      }
    }));
  }
}
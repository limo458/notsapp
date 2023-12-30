import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/cubit/add-note/add-notes_cubit.dart';
import 'package:notsapp/widges/custom-button.dart';
import 'package:notsapp/widges/custom-text-feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

String? title, suptitle;

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'contant',
            onSaved: (value) {
              suptitle = value;
            },
            maxline: 5,
          ),
          const SizedBox(height: 10),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return customButton(
                isloding: state is AddNotesLoding ? true : false,
                textButon: 'Add',
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var noteModel = NoteMoldel(
                        title: title!,
                        suptitle: suptitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNotesCubit>(context).addNot(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

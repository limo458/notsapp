import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/widges/AConstans.dart';

part 'add-notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNot(NoteMoldel note) async {
    emit(AddNotesLoding());
    try {
      var notesBox = Hive.box<NoteMoldel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFealiur(e.toString()));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notsapp/Models/note_model.dart';
import 'package:notsapp/widges/Constans.dart';

part 'add-notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNotModle(NoteMoldel note) async {
    try {
      var notesBox = Hive.box<NoteMoldel>(kNotesBox);
      await notesBox.add(note);
    } catch (e) {
      AddNotesFealiur(e.toString());
    }
  }
}

part of 'add-notes_cubit.dart';

@immutable
sealed class NotesState {}

final class AddNotesInitial extends NotesState {}

final class AddNotesLoding extends NotesState {}

final class AddNotesSuccess extends NotesState {}

final class AddNotesFealiur extends NotesState {
  final String errorMassage;

  AddNotesFealiur(this.errorMassage);
}

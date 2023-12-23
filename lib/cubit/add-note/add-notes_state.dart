part of 'add-notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class AddNotesLoding extends AddNotesState {}

final class AddNotesSuccess extends AddNotesState {}

final class AddNotesFealiur extends AddNotesState {
  final String errorMassage;

  AddNotesFealiur(this.errorMassage);
}

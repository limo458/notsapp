part of 'add_cubit_cubit.dart';

@immutable
sealed class AddCubitState {}

final class AddCubitInitial extends AddCubitState {}

final class AddCubitLoding extends AddCubitState {}

final class AddCubitSuccess extends AddCubitState {}

final class AddCubitFailure extends AddCubitState {
  final String errorMassage;

  AddCubitFailure(this.errorMassage);
}

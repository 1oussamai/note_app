part of 'add_note_cubits_cubit.dart';

@immutable
sealed class AddNoteCubitsState {}

final class AddNoteCubitsInitial extends AddNoteCubitsState {}

final class AddNoteCubitsLoading extends AddNoteCubitsState {}

final class AddNoteCubitsFailure extends AddNoteCubitsState {
  final String errorMassage;

  AddNoteCubitsFailure(this.errorMassage);
}

final class AddNoteCubitsSuccess extends AddNoteCubitsState {}

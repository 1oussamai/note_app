part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class NoteIisLoading extends NoteState {}

final class NoteSuccess extends NoteState {
  final List<NoteModel> note;

  NoteSuccess(this.note);
}

final class NoteFailure extends NoteState {
  final String eRRMassge;

  NoteFailure(this.eRRMassge);
}

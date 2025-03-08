import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/constants.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchAllNote() {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
    List<NoteModel> allNotes = noteBox.values.toList();
      emit(NoteSuccess(allNotes));
    } on Exception catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}

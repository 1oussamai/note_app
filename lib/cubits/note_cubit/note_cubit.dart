import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/constants.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
   List<NoteModel>? allNotes;
  fetchAllNote() {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
     allNotes = noteBox.values.toList();
    emit(NoteSuccess());
  }
}

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/constants.dart';

part 'add_note_cubits_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitsState> {
  AddNoteCubit() : super(AddNoteCubitsInitial());

  addNote(NoteModel note) async {
    emit(AddNoteCubitsLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteCubitsSuccess());
    } on Exception catch (e) {
      AddNoteCubitsFailure(e.toString());
    }
  }
}

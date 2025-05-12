import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Models/note_model.dart';

class HiveNotesService {
  static const String boxName = 'notesBox';

  static Future<void> addNote(NoteModel note) async {
    final box = Hive.box<NoteModel>(boxName);
    await box.add(note);
  }

  static List<NoteModel> getNotes() {
    final box = Hive.box<NoteModel>(boxName);
    return box.values.toList();
  }

  static deleteNote(int index) {
    final box = Hive.box<NoteModel>(boxName);
    box.deleteAt(index);
  }
}

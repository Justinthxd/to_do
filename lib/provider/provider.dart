import 'package:flutter/material.dart';
import 'package:to_do/data/models/note.dart';

class MainProvider extends ChangeNotifier {
  List<Note> notes = [];

  List<Note> get getNotes => notes;

  set setNotes(Note note) {
    notes.add(note);
    notifyListeners();
  }
}

import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:prueba/api/api.dart';
import 'package:prueba/models/characters.dart';

class CharacterNotifier with ChangeNotifier {
  List<Character> _charactersList = [];

  UnmodifiableListView<Character> get charactersList => UnmodifiableListView(_charactersList);

  addCharacter(Character characters) {
    _charactersList.add(characters);
    notifyListeners();
  }

  listCharacter() {
    getCharacter().then((value) {
      _charactersList.addAll(value);
      notifyListeners();
    }).catchError((onError) {
      print(onError);
    });
  }
}
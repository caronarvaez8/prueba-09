import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:prueba/models/characters.dart';


String url1 = "rickandmortyapi.com";
String url2 = "api/character";

Future<List<Character>> getCharacter() async {

  List<Character> character = [];

  var uri = Uri.https(url1, url2);

  try {
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> decoded = Map<String, dynamic>.from(jsonDecode(response.body));

      for (var i = 0; i < 12; i++) {
        Character aux = Character.fromJson(decoded["results"][i]);
        character.add(aux);
      }
      print("hola ${decoded["results"][1]['name']}");
      return character;
    } else {
      return Future.error("error este");
    }
  } catch (e) {
    return Future.error(e);
  }
}
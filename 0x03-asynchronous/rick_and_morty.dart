import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final res =
        await http.get(Uri.parse("https://rickandmortyapi.com/api/character"));
    final characters = jsonDecode(res.body)["results"];
    for (final character in characters) {
      print(character["name"]);
    }
  } catch (error) {
    print("error caught: $error");
  }
}

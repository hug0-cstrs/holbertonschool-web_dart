import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    var response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character/'));
    if (response.statusCode == 200) {
      var characters = json.decode(response.body)['results'];
      for (var character in characters) {
        print(character['name']);
      }
    } else {
      throw Exception('Failed to fetch data');
    }
  } catch (err) {
    print('error caught: $err');
  }
}

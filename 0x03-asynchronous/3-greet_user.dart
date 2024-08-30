import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = json.decode(userData);
    return "Hello ${userMap['username']}";
  } catch (e) {
    return "error caught: $e";
  }
}

Future<String> loginUser() async {
  try {
    bool isUser = await checkCredentials();
    if (isUser) {
      print("There is a user: true");
      return greetUser();
    } else {
      print("There is a user: false");
      return "Wrong credentials";
    }
  } catch (e) {
    return "error caught: $e";
  }
}

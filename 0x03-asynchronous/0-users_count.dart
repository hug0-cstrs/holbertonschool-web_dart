import '0-util.dart';

Future<void> usersCount() async {
  try {
    int count = await fetchUsersCount();
    print("Number of users: $count");
  } catch (e) {
    print("error caught: $e");
  }
}

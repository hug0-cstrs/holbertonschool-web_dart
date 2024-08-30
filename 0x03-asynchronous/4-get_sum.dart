import 'dart:convert';

import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userDataJson = json.decode(userData);
    String id = userDataJson['id'];
    String userOrders = await fetchUserOrders(id);
    List<dynamic> orders = json.decode(userOrders);
    double total = 0;
    for (var product in orders) {
      String productPrice = await fetchProductPrice(product);
      total += double.parse(productPrice);
    }
    return total;
  } catch (err) {
    return -1;
  }
}

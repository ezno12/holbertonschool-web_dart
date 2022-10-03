import '4-util.dart';
import 'dart:convert';

calculateTotal() async {
    try {
    
    double totalePrice = 0;

    final Map<String, dynamic> user = json.decode(await fetchUserData());
    final List<dynamic> userOrder = json.decode(await fetchUserOrders(user["id"]));
    
     for (int i = 0; i < userOrder.length; i++) {
            totalePrice += json.decode(await fetchProductPrice(userOrder[i]));
        }
        return totalePrice;
    } catch(err) {
        print('error caught: $err');
        return 0;
    }
}
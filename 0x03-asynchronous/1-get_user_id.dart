import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
    var user = await fetchUserData();
    var userMap = json.decode(user);
    return userMap["id"];
}
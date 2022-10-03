import "package:http/http.dart" as http;
import 'dart:convert';

printBbCharacters() async {
  try {
    final res = await http.get(Uri.parse('https://www.breakingbadapi.com/api/characters'),
    );
    var json = jsonDecode(res.body);

    for (var i = 0; i < json.length; i++) {
      print("${json[i]['name']}");
    }
  } catch (err) {
    print('error caught: $err');
  }
}
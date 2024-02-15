import 'dart:convert';

import 'package:http/http.dart' as http;

class APIService {

  void addPreLaunchEmail(String email) async {
    try {
      await http.post(Uri.parse("https://localhost:7164/Green/AddPreLaunchEmail"),
        headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode({"email":email})
      );

    } catch (exception) {
      print(exception);
    }
  }


}
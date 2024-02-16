import 'dart:convert';
import 'package:http/http.dart' as http;

class APIService {

  void addPreLaunchEmail(String email, String name) async {
    try {
      http.Response response = await http.post(Uri.parse("https://localhost:7164/Green/AddPreLaunchEmail"),
        headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode({"emailAddress": email, "name": name, "timeStamp": DateTime.now().toString()})
      );    

    } catch (exception) {
      print(exception);
    }
  }


}
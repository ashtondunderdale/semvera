import 'dart:convert';
import 'package:http/http.dart' as http;

class APIService {

  void addPreLaunchEmail(String email, String name) async {
    try {

      if (email.isNotEmpty) {
        await http.post(Uri.parse("https://localhost:7164/Semvera/AddPreLaunchEmail"),
          headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8'},
          body: jsonEncode({"emailAddress": email, "name": name, "timeStamp": DateTime.now().toString()})
        );   
      }
 
    } catch (exception) {
      print(exception);
    }
  }

  Future<bool> tryLogin(String username, String password) async {
    try {
        http.Response response = await http.post(Uri.parse("https://localhost:7164/Semvera/TryLogin"),
          headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8'},
          body: jsonEncode({"username": username, "password": password})
        );   

        var success = jsonDecode(response.body)['success'];
        print(success);
        return true;

    } catch (exception) {
      print(exception);
      return false;
    }
  }
}
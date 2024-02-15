import 'package:http/http.dart' as http;

class APIService {

  void addEmailToDatabase(String email) async {
    try {
      http.Response response = await http.get(Uri.parse("https://localhost:7164/Green/GetQuestions"));

      print(response.body);

    } catch (exception) {
      print(exception);
    }

  }
}
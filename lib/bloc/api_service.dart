import 'package:http/http.dart' as http;

class ApiService {

  static const Map<String, String> _JSON_HEADERS = {
    'Content-Type': 'application/json; charset=UTF-8'
  };

  static const String _BASE_URL = 'https://jsonplaceholder.typicode.com/';

  Future<String> getData(String url) async {
    final response = await http.get(Uri.parse(_BASE_URL+url));
    if(response.statusCode == 200) {
      print(response.body);
      return response.body;
    }else {
      throw Exception('Failed to load data');
    }
  }

  Future<String> postData(String url, Map<String, String> map) async {
    final response = await http.post(Uri.parse(_BASE_URL+url),
        headers: _JSON_HEADERS,
        body: map
    );
    if(response.statusCode == 200) {
      return response.body;
    }else {
      throw Exception('Failed to load data');
    }
  }

}
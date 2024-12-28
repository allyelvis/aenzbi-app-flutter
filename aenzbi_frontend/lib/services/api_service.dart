import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://your_api_base_url/api/';

  Future<List<dynamic>> getUsers() async {
    final response = await http.get(Uri.parse('${baseUrl}users/'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load users');
    }
  }

  // Implement other API calls similar to getUsers
}

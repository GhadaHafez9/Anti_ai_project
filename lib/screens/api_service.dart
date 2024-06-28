import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://antiaiapp.azurewebsites.net/api";

  Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(Uri.parse("$baseUrl/posts/list_create/"));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load posts');
    }
  }

  Future<void> uploadPost(Map<String, dynamic> postData) async {
    final response = await http.post(
      Uri.parse("$baseUrl/posts/list_create/"),
      headers: {"Content-Type": "application/json"},
      body: json.encode(postData),
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to upload post');
    }
  }

  // Add other API methods similarly...
}

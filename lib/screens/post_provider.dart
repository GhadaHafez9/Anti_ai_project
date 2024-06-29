import 'package:anti_ai_project/services/api_service.dart';
import 'package:flutter/material.dart';

class PostProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  List<dynamic> _posts = [];

  List<dynamic> get posts => _posts;

  Future<void> fetchPosts() async {
    _posts = await _apiService.fetchPosts();
    notifyListeners();
  }

  Future<void> addPost(Map<String, dynamic> postData) async {
    await _apiService.uploadPost(postData);
    fetchPosts();
  }

  // Add other methods similarly...
}

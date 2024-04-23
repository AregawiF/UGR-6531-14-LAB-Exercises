import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'post_model.dart';

class PostProvider extends ChangeNotifier {
  List<Post> _posts = [];
  bool _isLoading = false;

  List<Post> get posts => _posts;
  bool get isLoading => _isLoading;

  Future<void> fetchPosts() async {
    _isLoading = true;
    notifyListeners();

    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      _posts = jsonData.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }

    _isLoading = false;
    notifyListeners();
  }
}

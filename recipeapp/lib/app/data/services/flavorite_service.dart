import 'dart:convert';
import 'package:http/http.dart' as http;

class FlavoriteService {
  final String baseUrl = 'https://api.spoonacular.com';
  final String apiKey = '947aeed06e8044cb9d50365dee43e8b8';

  Future<dynamic> getRecipes(String query) async {
    final url = Uri.parse('$baseUrl/recipes/complexSearch?query=$query&apiKey=$apiKey');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        // Decode JSON response
        final data = jsonDecode(response.body);
        return data;
      } else {
        // Jika gagal mendapatkan response yang valid
        throw Exception('Failed to load recipes');
      }
    } catch (e) {
      // Error handling
      print(e);
      return null;
    }
  }
}
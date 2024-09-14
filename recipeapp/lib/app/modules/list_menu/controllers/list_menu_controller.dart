import 'dart:convert';

import 'package:get/get.dart';
import 'package:Flavorite/app/data/services/flavorite_service.dart';
import 'package:http/http.dart' as http;

class ListMenuController extends GetxController {
  //TODO: Implement ListMenuController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

class RecipesController extends GetxController {
  var isLoading = false.obs; // Menggunakan GetX observable
  var recipesList = [].obs;  // Observable untuk menyimpan daftar resep
  var recipeDetails = {}.obs;

  final FlavoriteService _flavoriteService = FlavoriteService();

  // Fungsi untuk mendapatkan resep berdasarkan query
  void fetchRecipes(String query) async {
    try {
      isLoading(true);
      var url = Uri.parse(
        'https://api.spoonacular.com/recipes/complexSearch?query=$query&number=10&apiKey=947aeed06e8044cb9d50365dee43e8b8',
      );
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        recipesList.value = data['results']; // Save the search results to the list
      } else {
        Get.snackbar('Error', 'Failed to fetch recipes');
      }
    } catch (e) {
      Get.snackbar('Error', 'Something went wrong');
    } finally {
      isLoading(false);
    }


    // try {
    // isLoading(true);
    // var response = await http.get(Uri.parse(
    //     'https://api.spoonacular.com/recipes/complexSearch?query=$query&number=10&apiKey=YOUR_API_KEY'));
    // if (response.statusCode == 200) {
    //   var data = jsonDecode(response.body);
    //   recipesList.value = data['results']; // Simpan hasil pencarian di recipesList
    // } else {
    //   Get.snackbar('Error', 'Failed to fetch recipes');
    // }
    // } catch (e) {
    //   Get.snackbar('Error', 'Something went wrong');
    // } finally {
    //   isLoading(false);
    // }
  }

  void fetchRecipeDetails(int recipeId) async {
    try {
      isLoading(true);
      var url = Uri.parse(
        'https://api.spoonacular.com/recipes/$recipeId/information?includeNutrition=false&apiKey=947aeed06e8044cb9d50365dee43e8b8',
      );
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        recipeDetails.value = data; // Save recipe details for further use
        Get.toNamed('/detail', arguments: recipeDetails); // Navigate to the detail view
      } else {
        Get.snackbar('Error', 'Failed to fetch recipe details');
      }
    } catch (e) {
      Get.snackbar('Error', 'Something went wrong');
    } finally {
      isLoading(false);
    }
  }
}
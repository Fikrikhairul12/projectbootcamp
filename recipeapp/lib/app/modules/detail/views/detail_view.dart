import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final recipe = Get.arguments;  // Get the passed recipe details from arguments

    return Scaffold(
      backgroundColor: Color(0xffF2F3F5), // Warna background yang lebih lembut
      appBar: AppBar(
        title: Text(
          recipe['title'] ?? 'Recipe Detail',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffA8D5BA), // Mengganti warna AppBar agar lebih menarik
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Card untuk menampilkan gambar resep
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    recipe['image'],
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => 
                      Icon(Icons.error, size: 100, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 24), // Jarak antara gambar dan teks

                // Menampilkan nama resep dengan gaya menonjol
                Text(
                  recipe['title'] ?? 'Recipe',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 16), // Jarak setelah judul
                
                Divider(), // Pembatas antara judul dan konten

                // Ingredients Section
                Text(
                  'Ingredients:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                // Ingredients List
                ...List.generate(recipe['extendedIngredients'].length, (index) {
                  var ingredient = recipe['extendedIngredients'][index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      '• ${ingredient['amount']} ${ingredient['unit']} ${ingredient['name']}',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  );
                }),
                SizedBox(height: 24),

                // Instructions Section
                Text(
                  'Instructions:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                // Instructions Text
                Text(
                  recipe['instructions'] ?? 'No instructions available',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

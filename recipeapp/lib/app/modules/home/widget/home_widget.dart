import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String calories;
  final String time;

  const RecipeCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.calories,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: 250, // Lebar card
        padding: const EdgeInsets.all(16), // Padding dalam card
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imageUrl, // Gambar diambil dari parameter
                height: 150, // Tinggi gambar
                width: double.infinity, // Lebar gambar penuh
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16), // Jarak antara gambar dan teks
            Text(
              title, // Title dari parameter
              style: GoogleFonts.workSans(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              subtitle, // Subtitle dari parameter
              style: GoogleFonts.workSans(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 16), // Jarak antara teks dan ikon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.local_fire_department, color: Colors.orange),
                    const SizedBox(width: 5),
                    Text(
                      calories, // Kalori dari parameter
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.access_time, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text(
                      time, // Waktu dari parameter
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

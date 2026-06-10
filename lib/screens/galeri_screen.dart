import 'package:flutter/material.dart';

class GaleriScreen extends StatefulWidget {
  const GaleriScreen({super.key});

  @override
  State<GaleriScreen> createState() => _GaleriScreenState();
}

class _GaleriScreenState extends State<GaleriScreen> {
  String selectedCategory = "Semua";

  final Map<String, List<String>> galleryData = {
    "Pantai": [
      "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
      "https://images.unsplash.com/photo-1500375592092-40eb2168fd21",
      "https://images.unsplash.com/photo-1519046904884-53103b34b206",
      "https://images.unsplash.com/photo-1469474968028-56623f02e42e",
    ],

    "Kegiatan": [
      "https://images.unsplash.com/photo-1493558103817-58b2924bce98",
      "https://images.unsplash.com/photo-1473116763249-2faaef81ccda",
      "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
      "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
    ],

    "Kuliner": [
      "https://images.unsplash.com/photo-1559847844-5315695dadae",
      "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38",
      "https://images.unsplash.com/photo-1504674900247-0877df9cc836",
      "https://images.unsplash.com/photo-1515003197210-e0cd71810b5f",
    ],
  };

  List<String> getImages() {
    if (selectedCategory == "Semua") {
      return [
        ...galleryData["Pantai"]!,
        ...galleryData["Kegiatan"]!,
        ...galleryData["Kuliner"]!,
      ];
    }

    return galleryData[selectedCategory]!;
  }

  @override
  Widget build(BuildContext context) {
    final images = getImages();

    return Scaffold(
      appBar: AppBar(title: const Text("Galeri"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                filterButton("Semua"),
                filterButton("Pantai"),
                filterButton("Kegiatan"),
                filterButton("Kuliner"),
              ],
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.builder(
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(images[index], fit: BoxFit.cover),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget filterButton(String title) {
    final active = selectedCategory == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = title;
        });
      },

      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),

        decoration: BoxDecoration(
          color: active ? const Color(0xFF0D3B66) : Colors.white,

          borderRadius: BorderRadius.circular(10),

          border: Border.all(color: Colors.grey.shade300),
        ),

        child: Text(
          title,
          style: TextStyle(
            color: active ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

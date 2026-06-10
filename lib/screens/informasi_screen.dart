import 'package:flutter/material.dart';

class InformasiScreen extends StatelessWidget {
  const InformasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Info Wisata"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Pulau Pasaran",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Pulau Pasaran terletak di Teluk Lampung dan terkenal sebagai sentra pengolahan ikan asin yang menjadi ciri khas masyarakat setempat.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.7,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Selain menjadi pusat kuliner ikan asin, Pulau Pasaran juga menawarkan pemandangan laut yang indah, aktivitas nelayan tradisional, serta suasana wisata yang tenang dan menarik.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.7,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Wisatawan dapat menikmati panorama pantai, berfoto di dermaga, mencicipi kuliner khas, dan mengenal lebih dekat kehidupan masyarakat pesisir Bandar Lampung.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
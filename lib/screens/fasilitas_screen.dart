import 'package:flutter/material.dart';

class FasilitasScreen extends StatelessWidget {
  const FasilitasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Fasilitas"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          FacilityCard(
            icon: Icons.directions_car,
            title: "Tempat Parkir",
            subtitle: "Tersedia area parkir yang luas",
          ),

          FacilityCard(
            icon: Icons.restaurant,
            title: "Warung Makan",
            subtitle: "Tersedia berbagai warung makan dan kuliner khas",
          ),

          FacilityCard(
            icon: Icons.wc,
            title: "Toilet Umum",
            subtitle: "Tersedia toilet umum yang bersih",
          ),

          FacilityCard(
            icon: Icons.camera_alt,
            title: "Spot Foto",
            subtitle: "Banyak spot foto menarik di sekitar pulau",
          ),

          FacilityCard(
            icon: Icons.directions_boat,
            title: "Perahu Wisata",
            subtitle: "Tersedia jasa penyewaan perahu wisata",
          ),
        ],
      ),
    );
  }
}

class FacilityCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const FacilityCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [

          Icon(
            icon,
            size: 40,
            color: const Color(0xFF0D3B66),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
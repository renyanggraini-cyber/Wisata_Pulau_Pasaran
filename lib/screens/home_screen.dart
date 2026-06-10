import 'package:flutter/material.dart';

import 'informasi_screen.dart';
import 'galeri_screen.dart';
import 'lokasi_screen.dart';
import 'fasilitas_screen.dart';
import 'kuliner_screen.dart';
import 'tentang_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Wisata Pulau Pasaran",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            // Banner
            Container(
              margin: const EdgeInsets.all(16),
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.6),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(20),
                alignment: Alignment.bottomLeft,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Pulau Pasaran",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text(
                      "Destinasi Wisata Ikan Asin",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Menu Wisata",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.1,
                children: [

                  menuCard(
                    context,
                    Icons.info_outline,
                    "Informasi",
                    const InformasiScreen(),
                  ),

                  menuCard(
                    context,
                    Icons.photo_library_outlined,
                    "Galeri",
                    const GaleriScreen(),
                  ),

                  menuCard(
                    context,
                    Icons.location_on_outlined,
                    "Lokasi",
                    const LokasiScreen(),
                  ),

                  menuCard(
                    context,
                    Icons.home_work_outlined,
                    "Fasilitas",
                    const FasilitasScreen(),
                  ),

                  menuCard(
                    context,
                    Icons.restaurant_menu,
                    "Kuliner",
                    const KulinerScreen(),
                  ),

                  menuCard(
                    context,
                    Icons.person_outline,
                    "Tentang",
                    const TentangScreen(),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget menuCard(
    BuildContext context,
    IconData icon,
    String title,
    Widget page,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),

      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },

      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 28,
              backgroundColor: const Color(0xFFE8F0FE),
              child: Icon(
                icon,
                size: 30,
                color: const Color(0xFF0D3B66),
              ),
            ),

            const SizedBox(height: 12),

            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
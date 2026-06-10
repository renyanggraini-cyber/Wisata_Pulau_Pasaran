import 'package:flutter/material.dart';

class TentangScreen extends StatelessWidget {
  const TentangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text("Tentang"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Image.network(
              "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [

                    const CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.travel_explore,
                        size: 40,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Aplikasi Wisata Pulau Pasaran",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Aplikasi ini dirancang untuk memberikan informasi wisata Pulau Pasaran Bandar Lampung secara praktis melalui perangkat mobile.",
                      textAlign: TextAlign.center,
                    ),

                    const Divider(height: 40),

                    const Text(
                      "Dikembangkan Oleh",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text("Adelita Khayra Putri"),
                    const Text("Nadia Sandy Putri"),
                    const Text("Reny Anggraeny"),
                    const Text("Salsabila Desiananda"),

                    const SizedBox(height: 25),

                    Text(
                      "© 2026 Wisata Pulau Pasaran",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
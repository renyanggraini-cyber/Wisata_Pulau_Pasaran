import 'package:flutter/material.dart';
import 'home_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
            fit: BoxFit.cover,
          ),

          Container(color: Colors.black.withOpacity(0.45)),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.travel_explore, color: Colors.white, size: 90),

                const SizedBox(height: 20),

                const Text(
                  "PULAU PASARAN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Wisata Ikan Asin\nBandar Lampung",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: 220,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const HomeScreen()),
                      );
                    },
                    child: const Text("Jelajahi Sekarang"),
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

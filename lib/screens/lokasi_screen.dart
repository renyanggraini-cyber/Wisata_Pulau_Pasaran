import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LokasiScreen extends StatelessWidget {
  const LokasiScreen({super.key});

  Future<void> bukaMaps() async {
    final Uri url = Uri.parse(
      "https://www.google.com/maps/search/?api=1&query=Pulau+Pasaran+Bandar+Lampung",
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(title: const Text("Lokasi"), centerTitle: true),

      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blue.shade100,
              child: const Center(
                child: Icon(Icons.location_on, size: 120, color: Colors.red),
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "Pulau Pasaran",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                const Text("Teluk Lampung, Bandar Lampung"),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: bukaMaps,
                    icon: const Icon(Icons.map),
                    label: const Text("Buka di Google Maps"),
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

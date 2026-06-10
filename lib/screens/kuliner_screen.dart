import 'package:flutter/material.dart';

class KulinerScreen extends StatelessWidget {
  const KulinerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> kuliner = [
      {
        "nama": "Ikan Asin Pulau Pasaran",
        "deskripsi":
            "Ikan asin merupakan produk unggulan Pulau Pasaran yang terkenal hingga berbagai daerah. Proses pengolahan dilakukan secara tradisional oleh masyarakat setempat.",
        "gambar": "assets/images/ikan_asin.jpg",
      },
      {
        "nama": "Ikan Bakar",
        "deskripsi":
            "Ikan segar hasil tangkapan nelayan yang dibakar dengan bumbu khas dan disajikan dengan sambal Lampung.",
        "gambar": "assets/images/ikan_bakar.jpg",
      },
      {
        "nama": "Seafood Segar",
        "deskripsi":
            "Berbagai pilihan seafood seperti kerang, cumi, dan udang yang diolah langsung dari hasil laut sekitar Pulau Pasaran.",
        "gambar": "assets/images/seafood.jpg",
      },
      {
        "nama": "Udang Bakar",
        "deskripsi":
            "Udang bakar dengan cita rasa gurih dan aroma khas hasil pembakaran yang menggugah selera.",
        "gambar": "assets/images/udang_bakar.jpg",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text("Kuliner"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: kuliner.length,
        itemBuilder: (context, index) {
          final item = kuliner[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Image.asset(
                    item["gambar"]!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["nama"]!,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        item["deskripsi"]!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.black54),
                      ),

                      const SizedBox(height: 15),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),

                                  title: Text(
                                    item["nama"]!,
                                    textAlign: TextAlign.center,
                                  ),

                                  content: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          child: Image.asset(
                                            item["gambar"]!,
                                            height: 200,
                                            fit: BoxFit.cover,
                                          ),
                                        ),

                                        const SizedBox(height: 15),

                                        Text(
                                          item["deskripsi"]!,
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    ),
                                  ),

                                  actions: [
                                    Center(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Tutup",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Text("Lihat Detail"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


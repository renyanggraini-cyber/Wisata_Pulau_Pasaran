import 'package:flutter/material.dart';

import 'screens/landing_screen.dart';
import 'screens/home_screen.dart';
import 'screens/informasi_screen.dart';
import 'screens/galeri_screen.dart';
import 'screens/lokasi_screen.dart';
import 'screens/fasilitas_screen.dart';
import 'screens/kuliner_screen.dart';
import 'screens/tentang_screen.dart';

void main() {
  runApp(const WisataPulauPasaranApp());
}

class WisataPulauPasaranApp extends StatelessWidget {
  const WisataPulauPasaranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Wisata Pulau Pasaran',

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFF5F6FA),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),

      home: const LandingScreen(),

      routes: {
        '/home': (context) => const HomeScreen(),
        '/informasi': (context) => const InformasiScreen(),
        '/galeri': (context) => const GaleriScreen(),
        '/lokasi': (context) => const LokasiScreen(),
        '/fasilitas': (context) => const FasilitasScreen(),
        '/kuliner': (context) => const KulinerScreen(),
        '/tentang': (context) => const TentangScreen(),
      },
    );
  }
}

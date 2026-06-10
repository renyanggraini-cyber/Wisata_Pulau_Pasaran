import 'dart:async';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          ),
        );
      },
    );
  }

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

          Container(
            color: Colors.black.withOpacity(0.4),
          ),

          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white24,
                child: Icon(
                  Icons.travel_explore,
                  size: 60,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 25),

              Text(
                "PULAU PASARAN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Bandar Lampung",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
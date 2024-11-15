import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wisata_mobile_5/screen/landingpage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    //menunda sebanyak 3 detik untuk menampilkan Splashscreen sebelum berpindah halaman
    Future.delayed(const Duration(seconds: 300), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Lottie Animation, pastikan URL valid atau pakai animasi lokal
            Lottie.network(
              'https://lottie.host/38b29cb1-4dfa-46c0-a48d-54ccd0ebc9bc/ftJieCnFxA.json',
              width: 350,
              height: 350,
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // SizedBox to create vertical spacing
                SizedBox(
                    height: 300), // This creates a vertical space of 300 pixels
                Text(
                  "RIZAL RINALDI",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1B1B1B),
                  ),
                ),
                Text(
                  "SLIPKNOT",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1B1B1B),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

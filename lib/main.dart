import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/materimodulscreen/formscreen.dart';
import 'package:wisata_mobile_5/screen/splashscreen.dart';

void main() {
  runApp(Travelapp());
}

class Travelapp extends StatelessWidget {
  const Travelapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Formscreen(),
    );
  }
}

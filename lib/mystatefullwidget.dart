import 'package:flutter/material.dart';

class mystatefullwidget extends StatefulWidget {
  const mystatefullwidget({super.key});

  @override
  State<mystatefullwidget> createState() => _mystatefullwidgetState();
}

class _mystatefullwidgetState extends State<mystatefullwidget> {
  var _Jumlahhitungan = 0;

  void _tambahhitungan() {
    setState(() {
      _Jumlahhitungan++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "INI STATEFULL",
      home: Scaffold(
        body: Column(
          children: [
            Text("$_Jumlahhitungan"),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                _tambahhitungan();
              },
              child: const Text("Tekan Tombol Ini"),
            ),
          ],
        ),
      ),
    );
  }
}

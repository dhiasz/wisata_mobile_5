import 'package:flutter/material.dart';

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ini adalah stateless",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text(
            "Ini adalah AppBar",
            style: TextStyle(color: Colors.yellow),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/rehan.jpg',
              width: 200,
              height: 200,
            ),
            Text(
              "Tampilan body tengah",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

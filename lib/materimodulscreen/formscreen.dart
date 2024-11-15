import 'package:flutter/material.dart';

class Formscreen extends StatefulWidget {
  const Formscreen({super.key});

  @override
  State<Formscreen> createState() => _FormscreenState();
}

class _FormscreenState extends State<Formscreen> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = ''; // Default selected value for radio button
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Tampilan Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nama TextField
            TextField(
              onChanged: (String value) {
                setState(() {
                  nama = value;
                });
              },
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: 'Masukan Nama',
              ),
            ),
            SizedBox(height: 20),

            // Jenis Kelamin Radio Buttons
            Text('Jenis Kelamin:'),
            Row(
              children: [
                Radio<String>(
                  value: 'laki-laki',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                Text('Laki-laki'),
                Radio<String>(
                  value: 'perempuan',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value!;
                    });
                  },
                ),
                Text('Perempuan'),
              ],
            ),
            SizedBox(height: 20),

            // Olahraga Checkbox
            CheckboxListTile(
              title: Text('Olahraga'),
              value: olahraga,
              onChanged: (value) {
                setState(() {
                  olahraga = value!;
                });
              },
            ),

            // Seni Checkbox
            CheckboxListTile(
              title: Text('Seni'),
              value: seni,
              onChanged: (value) {
                setState(() {
                  seni = value!;
                });
              },
            ),

            SizedBox(height: 20),

            // Lulus Switch
            SwitchListTile(
              title: Text('Lulus'),
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),

            // Submit Button (optional)
            SizedBox(
              width: double.infinity,
              height: 20,
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Form Submitted'),
                      content: Text(
                          'Nama: $nama\nJenis Kelamin: $selectedRadio\nOlahraga: $olahraga\nSeni: $seni\nLulus: $switchValue'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

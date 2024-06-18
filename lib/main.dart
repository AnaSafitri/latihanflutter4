import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    buatKotak(Colors.greenAccent, 300),
                    buatKotak(Colors.orange[400] ?? Colors.orange, 250),
                    buatKotak(Colors.greenAccent, 200),
                    buatKotak(Colors.orange[400] ?? Colors.orange, 270),
                    buatKotak(Colors.red[300] ?? Colors.red, 310),
                    buatKotak(Colors.blue[300] ?? Colors.blue, 230),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Nama : Ana Safitri",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buatKotak(Color warna, double ukuran) {
  return Container(
    decoration: BoxDecoration(
      color: warna,
    ),
    height: ukuran,
    width: ukuran,
    margin: EdgeInsets.all(10),
  );
}

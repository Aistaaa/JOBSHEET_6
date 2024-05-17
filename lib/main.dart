import 'package:flutter/material.dart';

void main() {
  runApp(TampilNamaMahasiswa());
}

class TampilNamaMahasiswa extends StatefulWidget {
  @override
  _TampilNamaMahasiswaState createState() => _TampilNamaMahasiswaState();
}

class _TampilNamaMahasiswaState extends State<TampilNamaMahasiswa> {
  final List<String> namaMahasiswa = [
    'Esta Purwanti',
    'Alfiami Sholihatun',
    'Taufik Rudhanto',
    'Marentino',
    'Rizqi Mohammad Saputra',
  ];
  final List<Color> warnaMahasiswa = [
    Color.fromARGB(255, 204, 4, 144),
    Color.fromARGB(255, 3, 126, 23),
    Colors.orange,
    const Color.fromARGB(255, 39, 149, 176),
    Color.fromARGB(255, 216, 219, 7),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello World!',
            style: TextStyle(color: Colors.white), // Atur warna teks putih
          ),
          backgroundColor: Color.fromARGB(255, 40, 110, 122), // Atur warna AppBar menjadi bluegrey
          elevation: 0, // Hilangkan bayangan AppBar
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Color.fromARGB(255, 128, 195, 207),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Apa Kabar',
                  style: TextStyle(
                    fontSize: 18, // Font yang lebih kecil
                    color: Colors.black, // Warna teks hitam
                  ),
                ),
                SizedBox(height: 10), // Jarak antara teks 'Apa Kabar' dan nama mahasiswa
                Text(
                  namaMahasiswa[index % namaMahasiswa.length],
                  style: TextStyle(
                    fontSize: 36, // Perbesar font
                    color: warnaMahasiswa[index % warnaMahasiswa.length],
                    fontWeight: FontWeight.bold, // Jadikan tebal
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              index++;
            });
          },
        ),
      ),
    );
  }
}

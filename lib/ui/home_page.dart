
import 'package:flutter/material.dart'; 
// Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.
import 'poli_page.dart'; 
// Mengimpor file poli_page.dart.
import 'pegawai_page.dart'; 
// Mengimpor file pegawai_page.dart.
import 'pasien_page.dart'; 
// Mengimpor file pasien_page.dart.

class HomePage extends StatefulWidget {
  const HomePage(
      {super.key}); 
      // Konstruktor yang menerima parameter key dengan tipe Key.

  @override
  State<HomePage> createState() =>
      _HomePageState(); 
      // Mengimplementasikan metode createState() yang mengembalikan instance dari _HomePageState.
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Home")), 
          // Menampilkan AppBar dengan judul "Home".
      body: ListView(
      // Menggunakan ListView sebagai kontainer untuk daftar item.
        children: [
          GestureDetector(
          // Menggunakan GestureDetector untuk menangkap gesture tap pada Card.
            child: Card(
              child: ListTile(
                title: const Text("Poli"), 
              ), // Menampilkan teks "Poli" pada ListTile.
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliPage())); 
            }, // Navigasi ke halaman PoliPage saat Card di-tap.
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pegawai"), 
              ), // Menampilkan teks "Pegawai" pada ListTile.
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PegawaiPage())); 
            }, // Navigasi ke halaman PegawaiPage saat Card di-tap.
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pasien"), 
              ), // Menampilkan teks "Pasien" pada ListTile.
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienPage())); // Navigasi ke halaman PasienPage saat Card di-tap.
            },
          ),
        ],
      ),
    );
  }
}

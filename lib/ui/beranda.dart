import 'package:flutter/material.dart';
// Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.
import '../widget/sidebar.dart';
// Mengimpor file sidebar.dart dari direktori widget.

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      // Menambahkan Sidebar sebagai drawer pada Scaffold.
      appBar: AppBar(
          title: Text("Beranda")),
          // Menampilkan judul "Beranda" pada AppBar.
      body: Center(
        child: Text("Selamat Datang"),
      ), // Menampilkan teks "Selamat Datang" di tengah halaman.
    );
  }
}
import 'package:flutter/material.dart';
//Mendeklarasikan dan mengimpor pustaka material.dart dari Flutter. Pustaka ini berisi widget dan komponen yang digunakan untuk membangun antarmuka pengguna berbasis Material Design.
import '/ui/poli_page.dart';
//Mengimpor file poli_page.dart yang berada dalam direktori /ui. Ini mengimpor definisi kelas atau fungsi yang ada di dalam file tersebut ke dalam file saat ini.
import '/ui/pegawai_page.dart';
//Mengimpor file pegawai_page.dart yang berada dalam direktori /ui.
import '/ui/pasien_page.dart';
//Mengimpor file pasien_page.dart yang berada dalam direktori /ui.

void main() => runApp(MyApp());
//Mendefinisikan fungsi main(). Fungsi ini adalah titik masuk utama (entry point) dari aplikasi Flutter. Semua kode di dalam fungsi main() akan dieksekusi saat aplikasi dijalankan.

class MyApp extends StatelessWidget {
//Mendefinisikan kelas MyApp yang merupakan subkelas dari StatelessWidget. Kelas ini digunakan untuk membuat widget yang tidak memiliki perubahan status (state) yang mempengaruhi tampilan.
  @override
  //Mendeklarasikan metode build() yang diwajibkan untuk mengimplementasikan metode abstrak dari State. Metode ini akan membangun dan mengembalikan widget yang akan ditampilkan.
  Widget build(BuildContext context) {
  //Mendeklarasikan metode build() yang diwajibkan untuk mengimplementasikan metode abstrak dari StatelessWidget. Metode ini akan membangun dan mengembalikan widget yang akan ditampilkan.
    return MaterialApp(
    //Membuat instance MaterialApp, yang digunakan untuk mengkonfigurasi dan mengatur tema aplikasi serta menyediakan navigasi dan manajemen tampilan dalam aplikasi.
      title: 'Klinik APP',
      //Membuat instance MaterialApp, yang merupakan widget utama dari aplikasi Flutter. MaterialApp menyediakan konfigurasi global dan tema untuk aplikasi.
      debugShowCheckedModeBanner: false,
      //Mengatur properti title dari MaterialApp menjadi "Klinik APP". Properti ini digunakan untuk memberikan judul aplikasi.
      home: PoliPage(),
      //Mengatur properti home dari MaterialApp menjadi instance PoliPage(). PoliPage() adalah widget yang akan ditampilkan sebagai halaman utama aplikasi.
    );
  }
}
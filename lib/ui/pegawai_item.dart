import 'package:flutter/material.dart'; // Ngambil paket flutter
import '../model/pegawai.dart'; // Ngambil model pegawai
import 'pegawai_detail.dart'; // Ngambil tampilan halaman detail pegawai

class PegawaiItem extends StatelessWidget {
// Bikin komponen yang bakal nampilin data pegawai di aplikasi
  final Pegawai pegawai;
  // Nyimpen data pegawai yang bakal ditampilin di komponen ini

  const PegawaiItem({super.key, required this.pegawai});
  // Bikin komponen PegawaiItem, yang bakal nerima data pegawai

  @override // Ngebalikin nilai default yang udah ditetapin
  Widget build(BuildContext context) { // Bikin tampilan komponen PegawaiItem
    return GestureDetector( // Bikin komponen yang bisa berinteraksi sama sentuhan
      child: Card( // Bikin tampilan komponen dalam bentuk kartu
        child: ListTile( // Bikin tampilan komponen dalam bentuk daftar
          title: Text("${pegawai.namaPegawai}"), // Nampilin nama pegawai di daftar
        ),
      ),
      onTap: () { // Ngedefinisiin aksi kalo komponen di-klik
        Navigator.push(context, // Buat pindah ke halaman detail pegawai
            MaterialPageRoute(builder: (context) => PegawaiDetail(pegawai: pegawai))); // Buat bikin halaman detail pegawai
      },
    );
  }
}
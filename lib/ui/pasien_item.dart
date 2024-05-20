import 'package:flutter/material.dart'; // Ngambil komponen-komponen Flutter
import '../model/pasien.dart'; // Ngambil model pasien
import 'pasien_detail.dart'; // Ngambil detail pasien

class PasienItem extends StatelessWidget {
// Bikin komponen buat nampilin data pasien
  final Pasien pasien;
  // Nyimpen data pasien yang mau ditampilin

  const PasienItem({super.key, required this.pasien});
  // Buat bikin komponen PasienItem

  @override // Ngebalikin nilai default yang udah ditetapin
  Widget build(BuildContext context) { // Bikin tampilan komponen PasienItem
    return GestureDetector( // Bikin komponen yang bisa diinteraksi
      child: Card( // Bikin tampilan komponen dalam bentuk kartu
        child: ListTile( // Bikin tampilan komponen dalam bentuk daftar
          title: Text("${pasien.namaPasien}"), // Nampilin nama pasien di daftar
        ),
      ),
      onTap: () { // Ngedefinisiin aksi kalo komponen di-klik
        Navigator.push( // Buat pindah ke halaman detail pasien
            context, // Buat nentuin konteks
            MaterialPageRoute( // Bikin halaman detail pasien
                builder: (context) => PasienDetail(pasien: pasien))); // Bikin halaman detail pasien
      },
    );
  }
}

import 'package:flutter/material.dart'; // buat manggil fitur flutter
import '../model/pegawai.dart'; // buat ngambil file model pegawai
import '../model/pasien.dart'; // buat ngambil file model pasien 
import 'pegawai_detail.dart'; // buat ngambil file pegawai detail
import 'pasien_detail.dart'; // buat ngambil file pasien detail
import 'pegawai_item.dart'; // buat ngambil 
import 'pasien_item.dart'; // buat ngambil item pasien
import 'pegawai_form.dart'; // buat ngambil file form pegawai
import 'pasien_form.dart'; // buat ngambil file form pasien

class PasienPage extends StatefulWidget {
// Bikin halaman yang namanya "PasienPage" yang bisa berubah-ubah state/kondisinya
  const PasienPage({super.key});
  // Bikin halaman pasien

  @override // Ganti fungsi createState yang udah ada
  State<PasienPage> createState() => _PasienPageState(); // Bikin state buat halaman pasien
}

class _PasienPageState extends State<PasienPage> { 
// Bikin kelas state buat halaman pasien
  @override // Buat ganti fungsi build yang udah ada.
  Widget build(BuildContext context) { // Bikin tampilan halaman pasien
    return Scaffold( // Bikin tampilan aplikasi
        appBar: AppBar(title: const Text("Data Pasien"), // Bikin judul halaman
        actions: [ // Ngebuat daftar komponen-komponen di sebelah kanan AppBar
        GestureDetector( // Ngebuat komponen yang bisa ditangkap gesture-nya
        child: const Icon(Icons.add), // Buat menedefinisikan ikon "tambah" yang mau ditampilin
        onTap: () { // Buat mendefinisikan apa yang mau dilakuin kalo komponen ini di-tap
        Navigator.push( // Buat ngebuka halaman baru
        context, MaterialPageRoute(builder: (context) => PasienForm())); // Ngarahin ke halaman form pasien
        }, 
      ) 
    ], 
  ), 
          body: ListView( // Bikin tampilan dalam bentuk daftar
          children: [ // Bikin daftar komponen yang mau ditampilin
            PegawaiItem(pegawai: Pegawai(namaPegawai: "Pegawai")), // Nampilin komponen buat data pegawai
            PasienItem(pasien: Pasien(namaPasien: "Pasien")), // Nampilin komponen buat data pasien
        ], 
      ), 
    ); 
  } 
} 
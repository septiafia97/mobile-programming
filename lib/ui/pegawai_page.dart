import 'package:flutter/material.dart';
// Ngimpor komponen-komponen flutter
import '../model/pegawai.dart';
// Ngimpor file berisi model/struktur data buat pegawai
import '../model/pasien.dart';
// Ngimpor file berisi model/struktur data buat pasien
import 'pegawai_detail.dart';
// Ngimpor file yang berisi tampilan detail pegawai
import 'pasien_detail.dart';
// Ngimpor file yang berisi tampilan detail pasien
import 'pegawai_item.dart';
// Ngimpor file yang berisi tampilan item/elemen pegawai
import 'pasien_item.dart';
// Ngimpor file yang berisi tampilan item/elemen pasien
import 'pegawai_form.dart';
// Ngimpor file yang berisi form untuk menambah/edit data pegawai

class PegawaiPage extends StatefulWidget {
// Bikin halaman yang namanya "PegawaiPage" yang bisa berubah-ubah state/kondisinya
  const PegawaiPage({super.key});
  // Bikin halaman pegawai

  @override // Ganti fungsi createState yang udah ada
  State<PegawaiPage> createState() => _PegawaiPageState(); // Bikin state buat halaman pegawai
}

class _PegawaiPageState extends State<PegawaiPage> {
// Bikin class state buat halaman pegawai
  @override // Buat ganti fungsi build yang udah ada.
  Widget build(BuildContext context) { // Bikin tampilan halaman pegawai
    return Scaffold( // Bikin tampilan aplikasi
      appBar: AppBar(title: const Text("Data RS"), // Bikin judul halaman
        actions: [ // Ngebuat daftar komponen-komponen di sebelah kanan AppBar
          GestureDetector( // Ngebuat komponen yang bisa ditangkap gesture-nya
            child: const Icon(Icons.add), // Buat menedefinisikan ikon "tambah" yang mau ditampilin
            onTap: () { // Buat mendefinisikan apa yang mau dilakuin kalo komponen ini di-tap
              Navigator.push(context, // Buat ngebuka halaman baru
                  MaterialPageRoute(builder: (context) => PegawaiForm())); // Ngarahin ke halaman form pegawai
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

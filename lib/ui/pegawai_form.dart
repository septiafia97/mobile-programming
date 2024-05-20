import 'package:flutter/material.dart';
// Ngimpor komponen-komponen flutter
import '../model/pegawai.dart';
// Ngimpor model pegawai
import 'pegawai_detail.dart';
// Ngimpor detail pegawai

class PegawaiForm extends StatefulWidget {
// Bikin widget buat form pegawai
  const PegawaiForm({Key? key}) : super(key: key);
  // Ngebuat form pegawai
  _PegawaiFormState createState() => _PegawaiFormState();
  // Bikin state buat form pegawai
}

class _PegawaiFormState extends State<PegawaiForm> {
// Bikin kondisi buat form pegawai
  final _formKey = GlobalKey<FormState>();
  // Bikin kunci buat form
  final _namaPegawaiCtrl = TextEditingController();
  // Buat ngatur input teks pada field "Nama Pegawai"

  @override // Buat ganti fungsi build yang udah ada
  Widget build(BuildContext context) { // Buat bikin tampilan form pegawai
    return Scaffold( // buat bikin tampilan aplikasi
      appBar: AppBar(title: const Text("Tambah Pegawai")), // Buat bikin judul halaman
      body: SingleChildScrollView( // Buat bikin tampilan yang bisa di-scroll
        child: Form( // Buat bikin form
          key: _formKey, // Buat ngelink form ke kunci yang udah dibuat
          child: Column( // Buat bikin tampilan dalam bentuk kolom
            children: [ // Bikin daftar komponen yang mau ditampilin
              _fieldNamaPegawai(), // Buat manggil fungsi _fieldNamaPegawai() yang bakal ngembaliin field input nama pegawai
              SizedBox(height: 20), // Nambahin jarak vertikal 20 pixel
              _tombolSimpan() // Buat manggil fungsi _tombolSimpan() yang bakal ngembaliin tombol "Simpan"
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPegawai() { // Ngedefinisiin fungsi _fieldNamaPegawai() yang bakal ngembaliin kode input nama pegawai
    return TextField( // Ngembaliin widget TextField yang bakal jadi kode input
      decoration: const InputDecoration(labelText: "Nama Pegawai"), // Buat ngatur tampilan TextField-nya, ada label "Nama Pegawai" 
      controller: _namaPegawaiCtrl, // Buat ngehubungin TextField sama _namaPegawaiCtrl yang tadi didefinisikan 
    );
  }

  _tombolSimpan() { // Ngedefinisiin fungsi _tombolSimpan() yang bakal ngembaliin tombol "Simpan"
    return ElevatedButton( // Ngembaliin widget ElevatedButton yang bakal jadi tombol
        onPressed: () { // Buat ngatur apa yang bakal kejadian kalo tombolnya diklik
          Pegawai pegawai = new Pegawai(namaPegawai: _namaPegawaiCtrl.text); // Buat bikin objek baru dari kelas Pegawai pake nilai dari _namaPegawaiCtrl.text
          Navigator.pushReplacement( // Buat pindah ke halaman baru
              context, // Buat ngasih tau di mana posisi sekarang
              MaterialPageRoute( // Ngebuat route baru pake MaterialPageRoute
                  builder: (context) => PegawaiDetail(pegawai: pegawai))); // Ngebangun halaman baru PegawaiDetail dan ngirim objek Pegawai yang baru aja dibuat
        },
        child: const Text("Simpan")); // Buat ngesetup tampilan tombolnya, ada tulisan "Simpan"
  }
}


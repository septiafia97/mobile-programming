import 'package:flutter/material.dart'; // Ngimpor komponen-komponen flutter
import '../model/pasien.dart'; // Ngimpor model pasien
import 'pasien_detail.dart'; // Ngimpor detail pasien
import 'pasien_page.dart'; // Ngimpor halaman pasien

class PasienForm extends StatefulWidget {
// Bikin widget buat form pasien
  const PasienForm({Key? key}) : super(key: key);
  // Ngebuat form pasien
  _PasienFormState createState() => _PasienFormState();
  // Bikin state buat form pasien
}

class _PasienFormState extends State<PasienForm> { 
  final _formKey = GlobalKey<FormState>(); 
  final _namaPasienCtrl = TextEditingController();

  @override // Buat ganti fungsi build yang udah ada
  Widget build(BuildContext context) { // Buat bikin tampilan form pasien
    return Scaffold( // buat bikin tampilan aplikasi
      appBar: AppBar(title: const Text("Tambah Data")), // Buat bikin judul halaman
      body: SingleChildScrollView( // Buat bikin tampilan yang bisa di-scroll
        child: Form( // Buat bikin form
          key: _formKey, // Buat ngelink form ke kunci yang udah dibuat
          child: Column( // Buat bikin tampilan dalam bentuk kolom
            children: [ // Bikin daftar komponen yang mau ditampilin
              _fieldNamaPasien(), // Buat manggil fungsi _fieldNamaPasien() yang bakal ngembaliin field input nama pasien
              SizedBox(height: 20), // Nambahin jarak vertikal 20 pixel
              _tombolSimpan() // Buat manggil fungsi _tombolSimpan() yang bakal ngembaliin tombol "Simpan"
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPasien() { // Ngedefinisiin fungsi _fieldNamaPasien() yang bakal ngembaliin kode input nama pasien
    return TextField( // Ngembaliin widget TextField yang bakal jadi kode input
      decoration: const InputDecoration(labelText: "Nama Data"), // Buat ngatur tampilan TextField-nya, ada label "Nama pasien" 
      controller: _namaPasienCtrl, // Buat ngehubungin TextField sama _namaPasienCtrl yang tadi didefinisikan
    );
  }

  _tombolSimpan() { // Ngedefinisiin fungsi _tombolSimpan() yang bakal ngembaliin tombol "Simpan"
    return ElevatedButton( // Ngembaliin widget ElevatedButton yang bakal jadi tombol
        onPressed: () { // Buat ngatur apa yang bakal kejadian kalo tombolnya diklik
          Pasien pasien = new Pasien(namaPasien: _namaPasienCtrl.text); // Buat bikin objek baru dari kelas pasien pake nilai dari _namaPasienCtrl.text
          Navigator.pushReplacement( // Buat pindah ke halaman baru
              context, // Buat ngasih tau di mana posisi sekarang
              MaterialPageRoute( // Ngebuat route baru pake MaterialPageRoute
                  builder: (context) => PasienDetail(pasien: pasien))); // Ngebangun halaman baru PasienDetail dan ngirim objek pasien yang baru aja dibuat
        },
        child: const Text("Simpan")); // Buat ngeatur tampilan tombolnya, ada tulisan "Simpan"
  }
}

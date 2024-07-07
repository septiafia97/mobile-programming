import 'package:flutter/material.dart';
// Ngimpor komponen-komponen flutter
import '../model/pasien.dart';
// Ngimpor kelas pasien yang ada di folder model
import 'pasien_detail.dart';
// Ngimpor kelas detail pasien dari file pasien_detail.dart

class PasienUpdateForm extends StatefulWidget {
// Kelas yang bakal nanganin proses update data
  final Pasien pasien;
  // Ngedefinisiin properti pasien yang bakal dipake buat ngupdate data pasien

  const PasienUpdateForm({Key? key, required this.pasien}) : super(key: key);
  // Ngedefinisiin pengolahan dari widget PasienUpdateForm yang harus diisi dengan parameter key dan pasien
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
  // Ngebuat objek kondisi dari _PasienUpdateFormState
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
// Kelas yang bakal ngatur form update data pasien
  final _formKey = GlobalKey<FormState>();
  // Key unik buat form yang bakal dipake buat validasi
  final _namaPasienCtrl = TextEditingController();
  // Controller buat field nama pasien di form

  @override 
  void initState() { // Fungsi yang bakal dipanggil pas pertama kali form diload
    super.initState();
    setState(() {
      _namaPasienCtrl.text = widget.pasien.namaPasien;
    });
  }

  @override
  Widget build(BuildContext context) { // Fungsi yang dipanggil buat bikin tampilan halaman form update pasien
    return Scaffold( // Bikin struktur dasar halaman, ada header dengan judul "Ubah Data"
      appBar: AppBar(title: const Text("Ubah Data")),
      body: SingleChildScrollView( // Bikin body halaman yang bisa di-scroll kalo isinya kebanyakan
        child: Form( // Kolom-kolom buat ngubah data pasien.
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPasien(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPasien() { // Bikin field input buat nama pasien
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Data"),
      controller: _namaPasienCtrl,
    );
  }

  _tombolSimpan() { // Bikin tombol "Simpan Perubahan"
    return ElevatedButton(
        onPressed: () {
          Pasien pasien = new Pasien(namaPasien: _namaPasienCtrl.text);
          // Bikin objek "pasien" baru dengan nama yang baru diubah
          Navigator.pop(context);
          // Buat keluar dari halaman form update
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien))); // Buat pindah ke halaman "pasienDetail" dengan data pasien yang baru diubah
        },
        child: const Text("Simpan Perubahan"));
  }
}


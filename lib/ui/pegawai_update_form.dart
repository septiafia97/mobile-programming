import 'package:flutter/material.dart';
// Ngimpor komponen-komponen flutter
import '../model/pegawai.dart';
// Ngimpor kelas pegawai yang ada di folder model
import 'pegawai_detail.dart';
// Ngimpor kelas detail pegawai dari file pegawai_detail.dart

class PegawaiUpdateForm extends StatefulWidget {
// Kelas yang bakal nanganin proses update data
  final Pegawai pegawai;
  // Ngedefinisiin properti pegawai yang bakal dipake buat ngupdate data pegawai

  const PegawaiUpdateForm({Key? key, required this.pegawai}) : super(key: key);
  // Ngedefinisiin pengolahan dari widget PegawaiUpdateForm yang harus diisi dengan parameter key dan pegawai
  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
  // Ngebuat objek kondisi dari _PegawaiUpdateFormState
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
// Kelas yang bakal ngatur form update data pegawai
  final _formKey = GlobalKey<FormState>();
  // Key unik buat form yang bakal dipake buat validasi
  final _namaPegawaiCtrl = TextEditingController();
  // Controller buat field nama pegawai di form

  @override 
  void initState() { // Fungsi yang bakal dipanggil pas pertama kali form diload
    super.initState();
    setState(() {
      _namaPegawaiCtrl.text = widget.pegawai.namaPegawai;
    });
  }

  @override
  Widget build(BuildContext context) { // Fungsi yang dipanggil buat bikin tampilan halaman form update pegawai
    return Scaffold( // Bikin struktur dasar halaman, ada header dengan judul "Ubah Data"
      appBar: AppBar(title: const Text("Ubah Data")),
      body: SingleChildScrollView( // Bikin body halaman yang bisa di-scroll kalo isinya kebanyakan
        child: Form( // Kolom-kolom buat ngubah data pegawai.
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPegawai(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPegawai() { // Bikin field input buat nama pegawai
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Data"),
      controller: _namaPegawaiCtrl,
    );
  }

  _tombolSimpan() { // Bikin tombol "Simpan Perubahan"
    return ElevatedButton(
        onPressed: () {
          Pegawai pegawai = new Pegawai(namaPegawai: _namaPegawaiCtrl.text);
          // Bikin objek "Pegawai" baru dengan nama yang baru diubah
          Navigator.pop(context);
          // Buat keluar dari halaman form update
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: pegawai))); // Buat pindah ke halaman "PegawaiDetail" dengan data pegawai yang baru diubah
        },
        child: const Text("Simpan Perubahan"));
  }
}


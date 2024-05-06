import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key})
      : super(
            key:
                key); // Konstruktor yang menerima parameter key dengan tipe Key? dan tidak wajib diisi.
  _PasienFormState createState() =>
      _PasienFormState(); // Mengimplementasikan metode createState() yang mengembalikan instance dari _PasienFormState.
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<
      FormState>(); // Membuat GlobalKey untuk mengakses state dari Form.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Tambah Pasien")), // Menampilkan AppBar dengan judul "Tambah Pasien".
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, // Menggunakan GlobalKey yang telah dibuat sebelumnya.
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Nama Pasien")), // Membuat TextField dengan label "Nama Pasien".
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "No Rekam Medis")), // Membuat TextField dengan label "No Rekam Medis".
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Tanggal Lahir")), // Membuat TextField dengan label "Tanggal Lahir".
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Nomor Telepon")), // Membuat TextField dengan label "Nomor Telepon".
              TextField(
                  decoration: const InputDecoration(
                      labelText:
                          "Alamat")), // Membuat TextField dengan label "Alamat".
              SizedBox(height: 20), // Membuat ruang kosong dengan tinggi 20.
              ElevatedButton(
                  onPressed: () {},
                  child: const Text("Simpan")) // Membuat tombol "Simpan".
            ],
          ),
        ),
      ),
    );
  }
}
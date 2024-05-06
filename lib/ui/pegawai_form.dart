import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({Key? key})
      : super(
            key:
                key); // Konstruktor yang menerima parameter key dengan tipe Key dan tidak wajib diisi.

  _PegawaiFormState createState() =>
      _PegawaiFormState(); // Mengimplementasikan metode createState() yang mengembalikan instance dari _PegawaiFormState.
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<
      FormState>(); // Deklarasi kunci form dengan tipe GlobalKey<FormState>.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "Tambah Pegawai")), // Menampilkan judul "Tambah Pegawai" pada AppBar.
      body: SingleChildScrollView(
        child: Form(
          key:
              _formKey, // Menghubungkan kunci form dengan form widget menggunakan atribut key.
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "Nama Pegawai"), // Menampilkan label "Nama Pegawai" pada TextField.
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "NIP"), // Menampilkan label "NIP" pada TextField.
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "Tanggal Lahir"), // Menampilkan label "Tanggal Lahir" pada TextField.
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "Nomor Telepon"), // Menampilkan label "Nomor Telepon" pada TextField.
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "Email"), // Menampilkan label "Email" pada TextField.
              ),
              TextField(
                decoration: const InputDecoration(
                    labelText:
                        "Password"), // Menampilkan label "Password" pada TextField.
              ),
              SizedBox(height: 20), // Membuat ruang kosong dengan tinggi 20.
              ElevatedButton(
                onPressed:
                    () {}, // Menetapkan fungsi kosong pada saat tombol ditekan.
                child: const Text(
                    "Simpan"), // Menampilkan teks "Simpan" pada tombol.
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart'; // Buat manggil komponen-komponen Flutter
import 'pasien_update_form.dart'; // Buat manggil file update pasien
import '../model/pegawai.dart'; // Buat manggil file model pegawai

class PasienDetail extends StatefulWidget {
// Definisi class buat halaman detail pasien, yang bakal kondisinya bisa berubah
  final Pasien pasien;
  // Nampilin data pasien yang udah dipilih

  const PasienDetail({super.key, required this.pasien});
  // Pembangun kelas PasienDetail, yang harus menerima data pasien

  @override // Ngebalikin nilai default yang udah ditetapin
  State<PasienDetail> createState() => _PasienDetailState(); // Bikin state baru dari kelas PasienDetail
}

class _PasienDetailState extends State<PasienDetail> {
// Kelas yang nampilain detail data pasien
  @override // Ngebalikin nilai default yang udah ditetapin
  Widget build(BuildContext context) { // Fungsi yang bakal ngebuat tampilan
    return Scaffold( // Ngebuat tampilan dasar aplikasi
      appBar: AppBar(title: Text("Detail Pasien")), // Ngebuat judul di bagian atas aplikasi
      body: Column( // Ngebuat tampilan vertikal
        children: [ // Buat nampilin item-item di dalam tampilan vertikal
          SizedBox(height: 20), // Ngebuat jarak vertikal 20 px
          Text(
            "Nama Pasien : ${widget.pasien.namaPasien}", // Nampilin Nama Pasien
            style: TextStyle(fontSize: 20), // Ngasih gaya ke tulisan
          ),
          SizedBox(height: 20),
          Row( // Ngebuat tampilan horizontal
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Ngatur posisi tombol di tengah
            children: [ // Nampilin tombol-tombol di dalam tampilan horizontal
              _tombolUbah(),
              _tombolHapus(),
            ],
          )
        ],
      ),
    );
  }
  
  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PasienUpdateForm(pasien: widget.pasien)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}
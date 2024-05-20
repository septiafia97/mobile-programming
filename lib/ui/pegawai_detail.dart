import 'package:flutter/material.dart'; // Buat manggil kumpulan komponen-komponen Flutter
import 'pegawai_update_form.dart'; // Buat manggil file form pegawai
import '../model/pegawai.dart'; // Buat manggil model data Pegawai yang udah dibuat sebelumnya

class PegawaiDetail extends StatefulWidget { // Buat bikin kelas baru namanya PegawaiDetail
  final Pegawai pegawai; // Buat nerima data pegawai yang mau ditampilin di halaman ini

  const PegawaiDetail({super.key, required this.pegawai}); // Buat ngebuat konstruktor buat kelas PegawaiDetail, biar bisa nerima data pegawai
  @override // Ngganti fungsi yang udah ada di kelas induk (StatefulWidget)
  State<PegawaiDetail> createState() => _PegawaiDetailState(); // Ngebuat state baru dari PegawaiDetail, namanya _PegawaiDetailState.
}

class _PegawaiDetailState extends State<PegawaiDetail> {
// Buat ngedefinisiin kelas baru _PegawaiDetailState yang ngeextend dari State<PegawaiDetail>
  @override // Ngganti fungsi yang udah ada di kelas induk
  Widget build(BuildContext context) { // Ngedefinisiin fungsi build yang bakal ngerender tampilan halaman
    return Scaffold( // Ngembaliin widget Scaffold yang bakal ngebungkus semua komponen UI di halaman ini
      appBar: AppBar(title: Text("Detail Pegawai")), // Ngebuat AppBar di bagian atas halaman dengan judul "Detail Pegawai"
      body: Column( // Ngebuat kolom yang bakal nampung semua komponen UI di bagian badan halaman
        children: [
          SizedBox(height: 20), // Nambahin jarak vertikal sebesar 20 pixel
          Text(
            "Nama Pegawai : ${widget.pegawai.namaPegawai}",
            style: TextStyle(fontSize: 20),
          ), // Nampilin teks Nama Pegawai dengan data dari objek pegawai
          SizedBox(height: 20),
          Row( // bikin tata letak horisontal dengan anak-anaknya (tombol) rata tengah
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
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
                      PegawaiUpdateForm(pegawai: widget.pegawai)));
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

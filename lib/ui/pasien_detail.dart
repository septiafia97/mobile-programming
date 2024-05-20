import 'package:flutter/material.dart'; // Buat manggil komponen-komponen Flutter
import '../model/pasien.dart'; // Buat manggil file model pasien

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
            "ID Pasien : ${widget.pasien.idPasien}", // Nampilin ID Pasien
            style: TextStyle(fontSize: 20), // Ngasih gaya ke tulisan
          ),
          SizedBox(height: 20),
          Row( // Ngebuat tampilan horizontal
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Ngatur posisi tombol di tengah
            children: [ // Nampilin tombol-tombol di dalam tampilan horizontal
              ElevatedButton( // Ngebuat tombol
                  onPressed: () {}, // Ngasih fungsi klik ke tombol
                  style: ElevatedButton.styleFrom(primary: Colors.green), // Ngasih warna ke tombol
                  child: const Text("Ubah")), // Nampilin tulisan "Ubah" di tombol
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text("Hapus")),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Nomor RM : ${widget.pasien.nomor_rm}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text("Hapus")),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Nama Pasien : ${widget.pasien.namaPasien}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text("Hapus")),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggal_lahir}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text("Hapus")),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Nomor Telepon : ${widget.pasien.nomor_telepon}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text("Hapus")),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Alamat : ${widget.pasien.alamat}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}
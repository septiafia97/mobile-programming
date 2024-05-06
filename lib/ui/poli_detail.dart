import 'package:flutter/material.dart'; 
//Mengimpor pustaka material.dart dari Flutter. Pustaka ini berisi widget dan komponen yang digunakan untuk membangun antarmuka pengguna berbasis Material Design.
import 'poli_update_form.dart'; 
//Mengimpor file poli_update_form.dart yang mungkin berisi definisi halaman formulir untuk memperbarui data poli.
import '../model/poli.dart'; 
//Mengimpor file poli.dart yang mungkin berisi definisi model Poli. Ini mungkin berisi struktur data atau logika terkait poli.

class PoliDetail extends StatefulWidget { 
//Mendefinisikan kelas PoliDetail sebagai subkelas dari StatefulWidget. Kelas ini digunakan untuk membuat widget yang memiliki perubahan status (stateful).
  final Poli poli; 
  //Membuat properti poli yang bertipe Poli. Properti ini digunakan untuk menyimpan data poli yang akan ditampilkan.

  const PoliDetail({super.key, required this.poli}); 
  //Membuat konstruktor untuk kelas PoliDetail dengan argumen opsional key dan argumen wajib poli. Konstruktor ini memanggil konstruktor superclass dengan menggunakan kata kunci super dan menyimpan nilai poli ke dalam properti poli.

  @override 
  //Mengimplementasikan metode createState() untuk membuat dan mengembalikan objek _PoliDetailState yang akan digunakan oleh widget ini.
  State<PoliDetail> createState() => _PoliDetailState(); 
} 

class _PoliDetailState extends State<PoliDetail> { 
//Mendefinisikan kelas _PoliDetailState sebagai subkelas dari State<PoliDetail>. Kelas ini digunakan untuk mengelola status dan membangun tampilan widget untuk PoliDetail.
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: Text("Detail Poli")), 
      body: Column( 
        children: [ 
          SizedBox(height: 20), 
          Text( 
            "Nama Poli : ${widget.poli.namaPoli}", 
            style: TextStyle(fontSize: 20), 
          ), //Menampilkan teks dengan menggunakan widget Text. Teks ini akan menampilkan nama poli yang diterima dari properti widget.poli.namaPoli. 
          SizedBox(height: 20), 
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [ 
              _tombolUbah(), 
              _tombolHapus(), 
            ], 
          ) //Membuat baris dengan menggunakan widget Row dan menempatkan dua tombol, yakni tombol "Ubah" dan tombol "Hapus", menggunakan widget ElevatedButton. Tombol "Ubah" akan melakukan navigasi ke halaman PoliUpdateForm saat ditekan.
        ], 
      ), 
    ); //Membangun tampilan utama halaman menggunakan widget Scaffold, AppBar, dan Column. Struktur dan tata letaknya mirip dengan kode sebelumnya. 
  } 

  _tombolUbah() { 
    return ElevatedButton( 
      onPressed: () { 
        Navigator.push( 
          context, 
          MaterialPageRoute( 
            builder: (context) => PoliUpdateForm(poli: widget.poli))); 
      }, 
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green), 
      child: const Text("Ubah")); 
  } //Membuat tombol "Ubah" menggunakan widget ElevatedButton. Ketika tombol ini ditekan, aplikasi akan melakukan navigasi ke halaman PoliUpdateForm dengan membawa data poli yang ditampilkan.

  _tombolHapus() { 
  return ElevatedButton( 
    onPressed: () {}, 
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red), 
    child: const Text("Hapus")); 
  } //Membuat tombol "Hapus" menggunakan widget ElevatedButton. Saat ini, fungsi tombol hapus belum diimplementasikan. Anda dapat menambahkan logika penghapusan data poli sesuai kebutuhan.
}
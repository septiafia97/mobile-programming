import 'package:flutter/material.dart';
//Mengimpor pustaka material.dart dari Flutter. Pustaka ini berisi widget dan komponen yang digunakan untuk membangun antarmuka pengguna berbasis Material Design. 
import '../model/poli.dart'; 
//Mengimpor file poli.dart yang berada dalam direktori model. Ini mengimpor definisi kelas atau fungsi yang didefinisikan di dalam poli.dart ke dalam file saat ini.
import 'poli_detail.dart'; 
//Mengimpor file poli_detail.dart. Ini mengimpor definisi kelas atau fungsi yang didefinisikan di dalam poli_detail.dart ke dalam file saat ini.

class PoliItem extends StatelessWidget { 
//Mendefinisikan kelas PoliItem sebagai subkelas dari StatelessWidget. Kelas ini digunakan untuk membuat widget yang tidak memiliki perubahan status (stateless).
  final Poli poli; 
  //Mendeklarasikan variabel poli dengan tipe Poli. Variabel ini akan menyimpan data objek Poli yang diberikan saat membuat instance PoliItem.

  const PoliItem({super.key, required this.poli}); 
  //Mendefinisikan konstruktor untuk kelas PoliItem dengan argumen opsional key dan argumen wajib poli. Konstruktor ini memanggil konstruktor superclass dengan menggunakan kata kunci super.

  @override 
  //Menandai adanya override pada metode build(). Metode ini digunakan untuk membangun dan mengembalikan widget yang akan ditampilkan.
  Widget build(BuildContext context) { 
    return GestureDetector(
    //Membuat widget GestureDetector, yang digunakan untuk mendeteksi interaksi pengguna seperti ketukan. 
      child: Card( 
      //Membuat widget Card, yang digunakan sebagai wadah untuk konten yang terkandung di dalamnya.
        child: ListTile( 
        //Membuat widget ListTile, yang digunakan untuk menampilkan teks atau widget lain dalam daftar.
          title: Text("${poli.namaPoli}"),
          //Mengatur properti title dari widget ListTile dengan menggunakan ekspresi ${poli.namaPoli}. Ini akan menampilkan teks yang berasal dari atribut namaPoli dari objek poli. 
        ), 
      ),
      onTap: () {
      //Menambahkan event handler onTap ke dalam widget GestureDetector. Ketika widget ini ditekan, kode yang ada di dalam event handler ini akan dijalankan. 
        Navigator.push(context, 
        //Menggunakan Navigator.push untuk berpindah ke halaman baru. Ini akan memunculkan halaman PoliDetail dan membawa objek poli sebagai argumen.
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
          //Membuat instance objek MaterialPageRoute untuk menavigasi ke halaman baru dengan builder yang akan membangun dan mengembalikan widget PoliDetail.

      }, //Menutup widget PoliItem.
    ); 
  } 
} 
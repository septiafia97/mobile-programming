import 'package:flutter/material.dart'; 
//Mengimpor pustaka material.dart dari Flutter. Pustaka ini berisi widget dan komponen yang digunakan untuk membangun antarmuka pengguna berbasis Material Design.
import '../model/poli.dart'; 
//Mengimpor file poli.dart yang berisi definisi model Poli. Ini mungkin berisi struktur data atau logika terkait poli.
import 'poli_detail.dart'; 
//Mengimpor file poli_detail.dart yang mungkin berisi halaman detail poli.
import 'poli_item.dart';
//Mengimpor file poli_item.dart yang mungkin berisi widget untuk menampilkan item poli dalam daftar. 
import 'poli_form.dart';
//Mengimpor file poli_form.dart yang mungkin berisi formulir untuk menambahkan poli baru. 
 
class PoliPage extends StatefulWidget { 
//Mendefinisikan kelas PoliPage sebagai subkelas dari StatefulWidget. Kelas ini digunakan untuk membuat widget yang memiliki perubahan status (stateful).
  const PoliPage({super.key});
  //Mendefinisikan konstruktor untuk kelas PoliPage dengan argumen opsional key. Konstruktor ini memanggil konstruktor superclass dengan menggunakan kata kunci super. 
 
  @override 
  //Menandai adanya override pada metode createState(). Metode ini digunakan untuk membuat dan mengembalikan objek State yang akan digunakan oleh widget ini.
  State<PoliPage> createState() => _PoliPageState(); 
} //Mengembalikan objek State baru yang sesuai dengan jenis PoliPage (dalam hal ini, _PoliPageState).
 
class _PoliPageState extends State<PoliPage> {
//Mendefinisikan kelas _PoliPageState sebagai subkelas dari State<PoliPage>. Kelas ini digunakan untuk mengelola status dan membangun tampilan widget untuk PoliPage. 
  @override 
  Widget build(BuildContext context) {
  //Menandai adanya override pada metode build(). Metode ini digunakan untuk membangun dan mengembalikan widget yang akan ditampilkan. 
    return Scaffold(
    //Membuat widget Scaffold, yang merupakan kerangka dasar untuk tata letak antarmuka pengguna yang Material Design. 
      appBar: AppBar( 
        title: const Text("Data Poli"), 
        actions: [ 
          GestureDetector( 
            child: const Icon(Icons.add), 
            onTap: () { 
              Navigator.push( 
                context, MaterialPageRoute(builder: (context) => PoliForm())); 
            }, 
          ) 
        ], //Mengatur properti appBar pada Scaffold dengan sebuah AppBar. Properti appBar digunakan untuk menambahkan AppBar ke dalam Scaffold. Di sini, AppBar memiliki judul "Data Poli" dan memiliki satu aksi dengan GestureDetector dan Icon "add". Ketika pengguna mengetuk ikon, aplikasi akan melakukan navigasi ke halaman PoliForm. 
      ), 
      body: ListView( 
        children: [ 
          PoliItem(poli: Poli(namaPoli: "Poli Anak")), 
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")), 
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")), 
          PoliItem(poli: Poli(namaPoli: "Poli THT")), 
        ], 
      ), //Baris 41-48 : membuat ListView dengan daftar widget PoliItem. Setiap PoliItem mewakili satu item poli dalam daftar. Daftar item poli ini mungkin diperoleh dari sumber data seperti List<Poli> 
    ); 
  } 
} 
import 'package:flutter/material.dart';
//Mengimpor pustaka material.dart dari Flutter. Pustaka ini berisi widget dan komponen yang digunakan untuk membangun antarmuka pengguna berbasis Material Design.

class PoliForm extends StatefulWidget {
//Mendefinisikan kelas PoliForm sebagai subkelas dari StatefulWidget. Kelas ini digunakan untuk membuat widget yang memiliki perubahan status (stateful).
  const PoliForm({Key? key}) : super(key: key);
  //Mendefinisikan konstruktor untuk kelas PoliForm dengan argumen opsional key. Konstruktor ini memanggil konstruktor superclass dengan menggunakan kata kunci super.
  _PoliFormState createState() => _PoliFormState();
  //Menandai adanya override pada metode createState(). Metode ini digunakan untuk membuat dan mengembalikan objek State yang akan digunakan oleh widget ini.
} //Mengembalikan objek State baru yang sesuai dengan jenis PoliForm (dalam hal ini, _PoliFormState).

class _PoliFormState extends State<PoliForm> {
//Mendefinisikan kelas _PoliFormState sebagai subkelas dari State<PoliForm>. Kelas ini digunakan untuk mengelola status dan membangun tampilan widget untuk PoliForm.
  final _formKey = GlobalKey<FormState>();
  //Membuat objek GlobalKey<FormState> dengan nama _formKey. GlobalKey digunakan untuk mengidentifikasi dan mengakses keadaan dari suatu widget dalam seluruh aplikasi.

  @override
  Widget build(BuildContext context) {
  //Menandai adanya override pada metode build(). Metode ini digunakan untuk membangun dan mengembalikan widget yang akan ditampilkan.
    return Scaffold(
    //Membuat widget Scaffold, yang merupakan kerangka dasar untuk tata letak antarmuka pengguna yang Material Design.
      appBar: AppBar(title: const Text("Tambah Poli")),
      //Mengatur properti title pada widget AppBar menjadi teks "Tambah Poli".
      body: SingleChildScrollView(
      //Membungkus widget Form dengan SingleChildScrollView. SingleChildScrollView digunakan untuk mengizinkan konten di dalamnya dapat di-scroll jika melebihi ukuran layar.
        child: Form(
        //Membuat widget Form, yang digunakan untuk mengelola formulir dan validasi. Properti key diatur ke _formKey yang telah didefinisikan sebelumnya.
          key: _formKey,
          child: Column(
          //Membuat widget Column, yang digunakan untuk mengatur elemen-elemen dalam tata letak kolom.
            children: [
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Poli")),
              //Baris 32-33 : membuat widget TextField dengan label "Nama Poli". TextField digunakan untuk menerima input teks dari pengguna.
              SizedBox(height: 20),
              //Membuat widget SizedBox dengan ketinggian 20 piksel. SizedBox digunakan untuk memberikan jarak antara elemen-elemen dalam tata letak.
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
              //Membuat tombol ElevatedButton dengan teks "Simpan". ElevatedButton adalah tombol yang tampil dengan latar belakang terang dan bayangan.
            ],
          ),
        ),
      ),
    );
  }
} //Menutup kelas _PoliFormState.
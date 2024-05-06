import 'package:flutter/material.dart';
//Mengimpor pustaka material.dart dari Flutter. Pustaka ini berisi widget dan komponen yang digunakan untuk membangun antarmuka pengguna berbasis Material Design.
import '../model/poli.dart';
//Mengimpor file poli.dart yang mungkin berisi definisi model Poli. Ini mungkin berisi struktur data atau logika terkait poli.
import '../ui/poli_detail.dart';
//Mengimpor file poli_detail.dart yang mungkin berisi halaman detail poli.

class PoliForm extends StatefulWidget {
//Mendefinisikan kelas PoliForm sebagai subkelas dari StatefulWidget. Kelas ini digunakan untuk membuat widget yang memiliki perubahan status (stateful).
  const PoliForm({Key? key}) : super(key: key);
  //Membuat konstruktor untuk kelas PoliForm dengan argumen opsional key. Konstruktor ini memanggil konstruktor superclass dengan menggunakan kata kunci super.
  _PoliFormState createState() => _PoliFormState();
  //Mengimplementasikan metode createState() untuk membuat dan mengembalikan objek _PoliFormState yang akan digunakan oleh widget ini.
}

class _PoliFormState extends State<PoliForm> {
//Mendefinisikan kelas _PoliFormState sebagai subkelas dari State<PoliForm>. Kelas ini digunakan untuk mengelola status dan membangun tampilan widget untuk PoliForm.
  final _formKey = GlobalKey<FormState>();
  //Membuat objek GlobalKey dengan tipe FormState. Kunci ini digunakan untuk mengakses dan memvalidasi form.
  final _namaPoliCtrl = TextEditingController();
  //Membuat objek TextEditingController untuk mengontrol input teks pada field nama poli.

  @override
  //Menandai adanya override pada metode build(). Metode ini digunakan untuk membangun dan mengembalikan widget yang akan ditampilkan.
  Widget build(BuildContext context) {
    return Scaffold(
    //Membuat widget Scaffold, yang merupakan kerangka dasar untuk tata letak antarmuka pengguna yang Material Design.
      appBar: AppBar(title: const Text("Tambah Poli")),
      //Mengatur AppBar dengan judul "Tambah Poli".
      body: SingleChildScrollView(
        child: Form(
          key: _formKey, //Mengatur kunci formKey pada Form dengan _formKey yang telah dibuat sebelumnya. Kunci ini digunakan untuk mengakses dan memvalidasi form.
          child: Column(
            children: [_fieldNamaPoli(), SizedBox(height: 20), _tombolSimpan()],
          ), //Membuat kolom yang berisi field nama poli dan tombol simpan.
        ),
      ), //Mengatur properti body pada Scaffold dengan widget SingleChildScrollView yang berisi Form. SingleChildScrollView digunakan untuk memberikan kemampuan scroll jika kontennya melebihi ukuran layar. Form digunakan untuk mengelompokkan field dan mengatur validasi pada field.
    );
  }

  _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
        controller: _namaPoliCtrl,
    );
  } //Membuat widget TextField sebagai field nama poli. TextField digunakan untuk menerima input teks dari pengguna.

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
        },
        child: const Text("Simpan"));
  } //Membuat tombol simpan yang digunakan untuk menyimpan data poli. Ketika tombol ditekan, nilai dari field nama poli akan digunakan untuk membuat objek Poli baru. Selanjutnya, aplikasi akan melakukan navigasi ke halaman PoliDetail dengan menggunakan Navigator.pushReplacement.
}
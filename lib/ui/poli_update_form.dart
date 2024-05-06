import 'package:flutter/material.dart';
//Mengimpor pustaka material.dart dari Flutter. Pustaka ini berisi widget dan komponen yang digunakan untuk membangun antarmuka pengguna berbasis Material Design.
import '../model/poli.dart';
//Mengimpor file poli.dart yang mungkin berisi definisi model Poli. Ini mungkin berisi struktur data atau logika terkait poli.
import '../ui/poli_detail.dart';
//Mengimpor file poli_detail.dart yang mungkin berisi halaman detail poli.

class PoliUpdateForm extends StatefulWidget {
//Mendefinisikan kelas PoliUpdateForm sebagai subkelas dari StatefulWidget. Kelas ini digunakan untuk membuat widget yang memiliki perubahan status (stateful).
  final Poli poli;
  //Membuat properti poli yang bertipe Poli. Properti ini digunakan untuk menyimpan data poli yang akan diperbarui.

  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);
  //Membuat konstruktor untuk kelas PoliUpdateForm dengan argumen opsional key dan argumen wajib poli. Konstruktor ini memanggil konstruktor superclass dengan menggunakan kata kunci super dan menyimpan nilai poli ke dalam properti poli.
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
  //Mengimplementasikan metode createState() untuk membuat dan mengembalikan objek _PoliUpdateFormState yang akan digunakan oleh widget ini.
}

class _PoliUpdateFormState extends State<PoliUpdateForm> {
//Mendefinisikan kelas _PoliUpdateFormState sebagai subkelas dari State<PoliUpdateForm>. Kelas ini digunakan untuk mengelola status dan membangun tampilan widget untuk PoliUpdateForm.
  final _formKey = GlobalKey<FormState>();
  //Membuat objek GlobalKey dengan tipe FormState. Kunci ini digunakan untuk mengakses dan memvalidasi form.
  final _namaPoliCtrl = TextEditingController();
  //Membuat objek TextEditingController untuk mengontrol input teks pada field nama poli.

  @override
  //Menandai adanya override pada metode build(). Metode ini digunakan untuk membangun dan mengembalikan widget yang akan ditampilkan.
  void initState() {
    super.initState();
    setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli;
    });
  } //Mengimplementasikan metode initState(), yang akan dipanggil saat widget pertama kali dibuat. Di dalam metode ini, nilai dari field nama poli akan diatur sesuai dengan nilai widget.poli.namaPoli yang diterima dari properti poli.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNamaPoli(), SizedBox(height: 20), _tombolSimpan()],
          ),
        ),
      ),
    ); //Membangun tampilan utama halaman menggunakan widget Scaffold, AppBar, SingleChildScrollView, dan Form. Struktur dan tata letaknya mirip dengan kode sebelumnya.
  }

  _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    ); //Membuat widget TextField sebagai field nama poli. TextField digunakan untuk menerima input teks dari pengguna.
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
        Navigator.pop(context);
        Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
      },
      child: const Text("Simpan Perubahan"));
  } //Membuat tombol simpan yang digunakan untuk menyimpan perubahan pada data poli. Ketika tombol ditekan, nilai dari field nama poli akan digunakan untuk membuat objek Poli baru. Selanjutnya, aplikasi akan melakukan navigasi kembali ke halaman sebelumnya menggunakan Navigator.pop(context) dan kemudian melakukan navigasi ke halaman PoliDetail dengan menggunakan Navigator.pushReplacement dan mengirimkan data poli yang telah diperbarui.
}
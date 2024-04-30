class Poli {
//Mendefinisikan kelas Poli.
  String? id;
  //Mendeklarasikan variabel id dengan tipe data String?. Tanda tanya (?) menunjukkan bahwa variabel id dapat memiliki nilai null.
  String namaPoli;
  //Mendeklarasikan variabel namaPoli dengan tipe data String. Variabel ini digunakan untuk menyimpan nama poli.
  Poli({this.id, required this.namaPoli});
  //Membuat konstruktor Poli dengan parameter id dan namaPoli. Konstruktor ini digunakan untuk membuat instance objek Poli. Parameter id memiliki tipe data String? yang artinya dapat bersifat opsional atau dapat memiliki nilai null. Parameter namaPoli memiliki tipe data String dan wajib diisi (required).
}
//Pada konstruktor Poli, menggunakan sintaksis required untuk memastikan bahwa parameter namaPoli harus diisi nilainya saat membuat objek Poli. Sementara itu, parameter id menggunakan sintaksis {this.id} yang mengindikasikan bahwa parameter tersebut bersifat opsional dan nilainya dapat diisi atau tidak diisi. Dengan menggunakan sintaksis ini, nilai id dapat diberikan saat membuat objek Poli, atau jika tidak diberikan, maka akan memiliki nilai null.
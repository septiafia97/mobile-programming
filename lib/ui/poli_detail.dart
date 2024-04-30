import 'package:flutter/material.dart'; 
//Mendeklarasikan dan mengimpor pustaka material.dart dari Flutter
import '../model/poli.dart'; 
//Mengimpor definisi kelas Poli dari file tersebut ke dalam file saat ini.
 
class PoliDetail extends StatefulWidget {
//Mendefinisikan kelas PoliDetail yang merupakan subkelas dari StatefulWidget. 
    final Poli poli; 
    //Mendeklarasikan variabel poli dengan tipe data Poli. Variabel ini digunakan untuk menyimpan instance objek Poli.
 
    const PoliDetail({super.key, required this.poli}); 
    //Membuat konstruktor PoliDetail dengan parameter key (opsional) dan poli (wajib). 
    
    @override 
    //Mendeklarasikan metode createState() yang diwajibkan untuk mengimplementasikan metode abstrak dari StatefulWidget. Metode ini akan membuat dan mengembalikan instance _PoliDetailState, yaitu objek yang menyimpan status (state) dari widget PoliDetail.
    State<PoliDetail> createState() => _PoliDetailState();
    //Menyediakan implementasi untuk metode abstrak createState() dan mengembalikan instance _PoliDetailState sebagai hasilnya. 
} 
 
class _PoliDetailState extends State<PoliDetail> { 
//Mendefinisikan kelas _PoliDetailState yang merupakan subkelas dari State<PoliDetail>. Kelas ini digunakan untuk menyimpan status (state) dari widget PoliDetail dan mengatur logika perilaku widget.
    @override 
    //Mendeklarasikan metode build() yang diwajibkan untuk mengimplementasikan metode abstrak dari State. Metode ini akan membangun dan mengembalikan widget yang akan ditampilkan.
    Widget build(BuildContext context) { 
        return Scaffold( 
        //Membuat instance Scaffold, yang menyediakan kerangka dasar untuk membangun tata letak aplikasi.
            appBar: AppBar(title: Text("Detail Poli")), 
            //Mengatur properti appBar dari Scaffold menjadi sebuah AppBar. AppBar adalah widget yang menampilkan bilah atas (app bar) di aplikasi.
            body: Column( 
            //Mengatur properti body dari Scaffold menjadi sebuah Column. Column adalah widget yang menampilkan widget anak secara vertikal.
                children: [ 
                    SizedBox(height: 20), 
                    Text( 
                        "Nama Poli : ${widget.poli.namaPoli}", 
                        style: TextStyle(fontSize: 20), 
                    ),
                    SizedBox(height: 20), 
                    Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                        children: [ 
                            ElevatedButton( 
                                onPressed: () {}, 
                                style: 
                                    ElevatedButton.styleFrom(backgroundColor: Colors.green), 
                                child: const Text("Ubah")), 
                            ElevatedButton( 
                                onPressed: () {}, 
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.red), 
                                child: const Text("Hapus")), 
                        ], 
                    ) 
                ], 
                //Mendefinisikan widget anak dalam Column. Pada contoh ini, terdapat satu widget SizedBox yang digunakan untuk memberikan jarak vertikal, dan satu widget Text yang menampilkan informasi detail tentang nama poli dari widget.poli. Properti widget.poli mengakses variabel poli yang dideklarasikan pada kelas PoliDetail.
            ), 
        ); 
    } 
}
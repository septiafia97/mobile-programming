import 'package:flutter/material.dart';
//baris ini mengimpor pustaka flutter yang diperlukan.

class PoliPage extends StatefulWidget { 
//baris ini mendefinisikan sebuah class PoliPage yang merupakan turunan dari StatefulWidget. StatefulWidget digunakan ketika ingin memiliki widget yang dapat berubah.
    const PoliPage({super.key}); 
//baris ini mendefinisikan konstruktor PoliPage. Konstruktor ini menerima argumen opsional key yang diteruskan ke konstruktor superclass.
 
    @override 
//digunakan untuk menandakan bahwa metode di bawahnya akan menggantikan atau mengoverride metode dengan nama yang sama dari superclass atau interface yang diimplementasikan.
    State<PoliPage> createState() => _PoliPageState(); 
//baris ini mengimplementasikan metode abstrak createState() yang didefinisikan oleh StatefulWidget.
} 
 
class _PoliPageState extends State<PoliPage> { 
//baris ini mendefinisikan kelas _PoliPageState extends State<PoliPage> yang merupakan turunan dari State. Kelas ini bertanggung jawab untuk mengatur keadaan PoliPage.
    @override
    //anotasi ini digunakan untuk menandakan bahwa metode di bawahnya akan menggantikan atau meng-override metode dengan nama yang sama dari superclass atau interfaceyang diimplementasikan. 
    Widget build(BuildContext context) {
    //baris ini mengimplementasikan metode build() yang diperlukan oleh State untuk membangun antarmuka pengguna. Metode ini mengembalikan widget yang akan ditampilkan. 
        return Scaffold( 
        //baris ini mengembalikan sebuah widget Scaffold, yang merupakan kerangka untuk menyusun antarmuka pengguna dengan elemen seperti app bar, body, dan lainnya.
            appBar: AppBar(title: const Text("Data Poli")), 
            //baris ini mengatur app bar yang akan ditampilkan di atas layar.
            body: ListView( 
            //baris ini mengatur body dari Scaffold menggunakan widget ListView, yang digunakan untuk menampilkan daftar elemen dalam daftar gulir.
                children: const [ 
                    Card( 
                        child: ListTile( 
                            title: const Text("Poli Anak"), 
                        ), 
                    ), 
                    Card( 
                        child: ListTile( 
                            title: const Text("Poli Kandungan"), 
                        ), 
                    ), 
                    Card( 
                        child: ListTile( 
                            title: const Text("Poli Gigi"), 
                        ), 
                    ), 
                    Card( 
                        child: ListTile( 
                            title: const Text("Poli THT"), 
                        ), 
                    )
                //baris 27-47 mendefinisikan daftar elemen dalam ListView menggunakan widget Card dan ListTile. Setisp Card berisi ListTile dengan teks judul yang berbeda. 
                ], 
                //baris ini menutup daftar elemen dalam ListView.
            ), 
        );
        //baris ini menutup Scaffold. 
    } 
} 

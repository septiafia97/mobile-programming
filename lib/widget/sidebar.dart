import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.
import '../ui/beranda.dart'; // Mengimpor file beranda.dart dari direktori ui.
import '../ui/login.dart'; // Mengimpor file login.dart dari direktori ui.
import '../ui/poli_page.dart'; // Mengimpor file poli_page.dart dari direktori ui.

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName:
                Text("Admin"), // Menampilkan teks "Admin" sebagai nama akun.
            accountEmail: Text(
                "admin@admin.com"), // Menampilkan teks "admin@admin.com" sebagai email akun.
          ),
          ListTile(
            leading:
                Icon(Icons.home), // Menampilkan ikon rumah di sebelah kiri.
            title: Text("Beranda"), // Menampilkan teks "Beranda".
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Beranda()), // Navigasi ke halaman Beranda.
              );
            },
          ),
          ListTile(
            leading: Icon(Icons
                .accessible), // Menampilkan ikon aksesibilitas di sebelah kiri.
            title: Text("Poli"), // Menampilkan teks "Poli".
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        PoliPage()), // Navigasi ke halaman PoliPage.
              );
            },
          ),
          ListTile(
            leading:
                Icon(Icons.people), // Menampilkan ikon orang di sebelah kiri.
            title: Text("Pegawai"), // Menampilkan teks "Pegawai".
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons
                .account_box_sharp), // Menampilkan ikon kotak akun di sebelah kiri.
            title: Text("Pasien"), // Menampilkan teks "Pasien".
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons
                .logout_rounded), // Menampilkan ikon logout di sebelah kiri.
            title: Text("Keluar"), // Menampilkan teks "Keluar".
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Login()), // Navigasi ke halaman Login dan menghapus semua rute sebelumnya.
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
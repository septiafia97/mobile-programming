class Pasien { // Membuat kelas pasien
  String? id; // Variabel id dengan tipe data string yang dapat menerima nilai null
  String namaPasien; // Variabel namaPasien dengan tipe data string yang tidak dapat menerima nilai null
  Pasien({this.id, required this.namaPasien}); // Bagian yang membuat objek baru dari class Pasien
  get idPasien => 'id'; // Fungsi yang selalu mengembalikan nilai teks 'id'
  get nomor_rm => 'nomor rm'; // Fungsi yang selalu mengembalikan nilai teks 'nomor rm'
  get tanggal_lahir => 'tanggal lahir'; // Fungsi yang selalu mengembalikan nilai teks 'tanggal lahir'
  get nomor_telepon => 'nomor telepon'; // Fungsi yang selalu mengembalikan nilai teks 'nomor telepon'
  get alamat => 'alamat'; // Fungsi yang selalu mengembalikan nilai teks 'alamat'
} // Penutup kelas
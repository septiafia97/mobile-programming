class Pegawai { // Membuat kelas pasien
  String? id; // Variabel id dengan tipe data string yang dapat menerima nilai null
  String namaPegawai; // Variabel namaPegawai dengan tipe data string yang dapat menerima nilai null
  Pegawai({this.id, required this.namaPegawai}); // Bagian yang membuat objek baru dari class Pasien
  get idPegawai => 'id'; // Fungsi yang selalu mengembalikan nilai teks 'id'
  get nip => 'nip'; // Fungsi yang selalu mengembalikan nilai teks 'nip'
  get tanggal_lahir => 'tanggal lahir'; // Fungsi yang selalu mengembalikan nilai teks 'tanggal lahir'
  get nomor_telepon => 'nomor telepon'; // Fungsi yang selalu mengembalikan nilai teks 'nomor telepon'
  get email => 'email'; // Fungsi yang selalu mengembalikan nilai teks 'email'
  get password => 'password'; // Fungsi yang selalu mengembalikan nilai teks 'password'
}
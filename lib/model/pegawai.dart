class Pegawai {
  late int
      id; // Properti untuk menyimpan ID pegawai (late keyword menandakan bahwa nilainya akan ditetapkan nanti sebelum digunakan).
  late String nip; // Properti untuk menyimpan NIP pegawai.
  late String nama; // Properti untuk menyimpan nama pegawai.
  late String tanggal_lahir; // Properti untuk menyimpan tanggal lahir pegawai.
  late String nomor_telepon; // Properti untuk menyimpan nomor telepon pegawai.
  late String email; // Properti untuk menyimpan email pegawai.
  late String password; // Properti untuk menyimpan password pegawai.

  Pegawai(Map pegawai) {
    // Konstruktor kelas Pegawai yang menerima sebuah Map bernama "pegawai".
    id = pegawai[
        'id']; // Mengassign nilai dari kunci 'id' dalam map "pegawai" ke properti "id".
    nip = pegawai[
        'nip']; // Mengassign nilai dari kunci 'nip' dalam map "pegawai" ke properti "nip".
    nama = pegawai[
        'nama']; // Mengassign nilai dari kunci 'nama' dalam map "pegawai" ke properti "nama".
    tanggal_lahir = pegawai[
        'tanggal_lahir']; // Mengassign nilai dari kunci 'tanggal_lahir' dalam map "pegawai" ke properti "tanggal_lahir".
    nomor_telepon = pegawai[
        'nomor_telepon']; // Mengassign nilai dari kunci 'nomor_telepon' dalam map "pegawai" ke properti "nomor_telepon".
    email = pegawai[
        'email']; // Mengassign nilai dari kunci 'email' dalam map "pegawai" ke properti "email".
    password = pegawai[
        'password']; // Mengassign nilai dari kunci 'password' dalam map "pegawai" ke properti "password".
  }
}